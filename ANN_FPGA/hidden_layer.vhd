
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.custom_pkg.all;

-- num_neurons is defined in the custom_package --

entity hidden_layer is
	generic ( N : Integer );
	port (    clk : in std_logic ;
				 num_operations : in std_logic_vector(7 downto 0);
				 layer : in layer_type;
				 rst : in std_logic ;
			    input : in std_logic_vector(7 downto 0);
			    weight : in eight_bit(N-1 downto 0);
				 shift_over_flag : out std_logic;
				 active_activation: out std_logic;
			    output_hid : out eight_bit(N-1 downto 0)
	      );
end hidden_layer;

architecture Behavioral of hidden_layer is

signal ce, sclr, bypass, count_en, activation, shift_activate : std_logic := '0'; 
signal weighted_sum : sixteen_bit(num_neurons-1 downto 0) := (others=> (others=>'0'));
signal activ_output : thirtytwo_bit(num_neurons-1 downto 0);

type shift_array is array (num_neurons-1 downto 0) of std_logic;
signal shift_over : shift_array;

--signal activ_output : std_logic_vector(31 downto 0);
--signal weighted_sum, weighted_sum_reg,weighted_sum_reg_in : sixteen_bit(2 downto 0) := (others=> (others=>'0'));

COMPONENT neuron_hid
	port ( clk : in std_logic;
			 ce : in std_logic;
			 sclr : in std_logic;
			 bypass : in std_logic;
			 im : in std_logic_vector(7 downto 0);
			 weig_hid : in std_logic_vector( 7 downto 0);
			 hid_out : out std_logic_vector (15 downto 0)
		  );
END COMPONENT;

COMPONENT activation_hid_count
	port ( clk : in std_logic; 
			 count_en : in std_logic;
			 num_operations : in std_logic_vector(7 downto 0);
			 activation : out std_logic
			);
END COMPONENT;

COMPONENT shifter
	port ( clk : in std_logic;
			 input : in std_logic_vector(15 downto 0);
			 enable : in std_logic;
			 shift_over_flag : out std_logic;
			 active_output : out std_logic_vector(31 downto 0)
			);
END COMPONENT;

begin

neuron_map:
for n in num_neurons-1 downto 0 generate 
	begin
		neurons : neuron_hid port map (clk,ce,sclr,bypass,input,weight(n),weighted_sum(n));
end generate neuron_map;
---------------
---- NOTE -----
---------------
--- it takes one clock cycle to read data from BRAM so the weighted_sum_layer has to operate for 1 cycle more ---

activation_hid_count_map : activation_hid_count
	port map (clk,count_en,num_operations,activation);

shift_map:
for m in num_neurons-1 downto 0 generate
	begin
		shifter_map : shifter port map (clk,weighted_sum(m),shift_activate,shift_over(m),activ_output(m));
end generate shift_map;

active_activation <= activation;

concurrent_assignment : for i in num_neurons-1 downto 0 generate
	output_hid(i) <= activ_output(i)(25 downto 24) & activ_output(i)(23 downto 18);
end generate;

shift_over_flag <= shift_over(0);
sclr <= '0';
bypass <= '0';
	
process (activation,layer,rst) begin
		if rst = '1' then
			count_en <= '0';
			shift_activate <= '0';
			ce <= '0';
		else	
			ce <= '1';
			if layer = weighted_sum_layer1 or layer = weighted_sum_layer2 then
				count_en <= '1';
				if activation = '1' then
					shift_activate <= '1';
				else
					shift_activate <= '0';
				end if;
				
			else	
					count_en <= '0';
					shift_activate <= '1';
			end if;
		end if;
		
end process;

	

-------------------------------------------------------------------------------------------------------------------------------
--instead of registering the whole weighted_sum, it is efficient to input image as "zero" so the accumulated weight remains same
--------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------
--If you want to assign array of signal concurrently use generate signal 
-------------------------------------------------------------------------
		
--Registering_Weighted_Sum : process (clk) begin
--	if rising_edge(clk) then
--		weighted_sum_reg <= weighted_sum_reg_in;	 
--	end if;
--end process;
--
--process (activation,weighted_sum,weighted_sum_reg) begin 
--		if activation = '1' then
--				weighted_sum_reg_in <= weighted_sum;
--		else
--				weighted_sum_reg_in <= weighted_sum_reg;
--		end if;	
--end process;
--
--process (shift_activate) begin
--	if 
--
--end process;

end Behavioral;

