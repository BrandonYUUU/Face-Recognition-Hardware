
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.custom_pkg.all;


entity prediction is
	port (clk : in std_logic;
			enable : in std_logic;
			output_hid : in eight_bit(num_neurons-1 downto 0);
			predict : out std_logic_vector(7 downto 0)
			);
end prediction;

architecture Behavioral of prediction is

begin

process (clk, enable, output_hid) 
	variable biggest : std_logic_vector(7 downto 0);
	variable count : Integer;
	begin 
		if enable = '0' then
			biggest := (others=>'0');
			count := 0;
		else
			if rising_edge(clk) then
				if count < num_neurons then
					if signed(output_hid(count)) > signed(biggest) then
						biggest := output_hid(count);
					end if;
					count := count + 1;
				end if;
			end if;
		end if;
	predict <= biggest;
	
end process;

				
end Behavioral;

