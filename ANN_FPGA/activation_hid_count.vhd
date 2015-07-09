
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity activation_hid_count is
	port ( clk : in std_logic;
			 count_en : in std_logic;
			 num_operations : in std_logic_vector(7 downto 0);
			 activation : out std_logic
			);
end activation_hid_count;

architecture Behavioral of activation_hid_count is

signal count : std_logic_vector (7 downto 0) := (others => '0');

begin


	process (clk,count,count_en,num_operations) begin
		--if rising_edge(clk) then
			if count_en = '1' then
				if count = num_operations + 1 then   ----- it takes one clock cycle to read data from BRAM so the weighted_sum_layer has to operate for 1 cycle more
					activation <= '1';
				else
					activation <= '0';
					if rising_edge(clk) then
						count <= count + 1;
					end if;
				end if;
			else
				count <= "00000000";
				activation <= '0';
			end if;
		--end if;
	end process;

end Behavioral;

