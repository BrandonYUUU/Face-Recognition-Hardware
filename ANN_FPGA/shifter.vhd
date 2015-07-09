
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity shifter is
	port ( clk : in std_logic;
			 input : in std_logic_vector(15 downto 0);
			 enable : in std_logic;
			 shift_over_flag : out std_logic;		---for pipelined shifter
			 active_output: out std_logic_vector(31 downto 0)
			);
end shifter;

architecture Behavioral of shifter is

signal acticv_mul_en : std_logic ;
signal input_temp : std_logic_vector(15 downto 0);
constant const_one : std_logic_vector(15 downto 0) := "0001000000000000";
--signal shifted_output : std_logic_vector(15 downto 0);
signal shifted_output_temp : std_logic_vector(15 downto 0);

COMPONENT acticv_mul
  PORT (
    clk : IN STD_LOGIC;
	 ce : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

begin

acticv_mul_map : acticv_mul 
	port map (clk,acticv_mul_en,shifted_output_temp,input_temp,const_one,active_output);

shifter : process (clk,enable) 

variable temp_reg: std_logic_vector(15 downto 0) := (Others => '0');
variable shift_counter: integer := 0;

begin
   if(enable = '0') then
      temp_reg := (others => '0');  
      shift_counter := 0;
		shifted_output_temp <= (others => '0'); 
		input_temp <= (others => '0'); 
		shift_over_flag <= '0';		
		acticv_mul_en <= '0';
   else
		if rising_edge(clk) then	
			acticv_mul_en <= '0';
			if (shift_counter = 0) then
				temp_reg := input;
				input_temp <= input;
				
			elsif (shift_counter > 2) then          --- The activation function is approximated as 
				shifted_output_temp <= temp_reg;     ---  x(1+0.25*x) . The term 0.25*x is done by 
				temp_reg := input;	                ---	shifting x by 4 times  
				if shift_counter > 4 then
					acticv_mul_en <= '0';
					shift_over_flag <= '1';   
				else
					acticv_mul_en <= '1';
				end if;
			else
				for i in 0 to 13 loop
					temp_reg(i) := temp_reg(i+1);
				end loop;
				temp_reg(14) := '0';	
				
			end if;
			shift_counter := shift_counter + 1;
		end if;
	end if;
end process;


end Behavioral;

