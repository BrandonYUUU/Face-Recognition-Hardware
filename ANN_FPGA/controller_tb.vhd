
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.custom_pkg.all;

 
ENTITY controller_tb IS
END controller_tb;
 
ARCHITECTURE behavior OF controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			output : out std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
	
	--Outputs
	signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clk => clk,
          reset => reset,
			 output => output
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
		      reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		reset <= '0';

      wait for clk_period*10;
		
		
		wait for 5000 ns ;

   end process;

END;
