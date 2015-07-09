
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY shifter_tb IS
END shifter_tb;
 
ARCHITECTURE behavior OF shifter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter
    PORT(
         clk : IN  std_logic;
         input : IN  std_logic_vector(15 downto 0);
         enable : IN  std_logic;
         active_output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal input : std_logic_vector(15 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal active_output : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
          clk => clk,
          input => input,
          enable => enable,
          active_output => active_output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

       enable <= '0';
		
		wait for clk_period;
		
		enable <= '1';
		input <= "0000000001111000";
		
--		wait for clk_period*3;
--		
--		input <= "0000000000000111";
		
		wait for clk_period;
		
		input <= "0000000000000000";

      wait;
   end process;

END;
