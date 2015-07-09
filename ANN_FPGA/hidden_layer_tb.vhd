
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.custom_pkg.all;


ENTITY hidden_layer_tb IS
END hidden_layer_tb;
 
ARCHITECTURE behavior OF hidden_layer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hidden_layer
    PORT(
         clk : IN  std_logic;
         num_operations : IN  std_logic_vector(7 downto 0);
         layer : IN  layer_type;
         rst : IN  std_logic;
         input : IN  std_logic_vector(7 downto 0);
         weight : IN  eight_bit(2 downto 0);
			shift_over_flag : out std_logic;
			active_activation: out std_logic;
         output_hid : OUT  eight_bit(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal num_operations : std_logic_vector(7 downto 0) := (others => '0');
   signal layer : layer_type := idle;
   signal rst : std_logic := '0';
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal weight : eight_bit(2 downto 0) := ((others=> (others=>'0')));

 	--Outputs
   signal output_hid : eight_bit(2 downto 0);
	signal active_activation : std_logic;
	signal shift_over_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hidden_layer PORT MAP (
          clk => clk,
          num_operations => num_operations,
          layer => layer,
          rst => rst,
          input => input,
          weight => weight,
			 active_activation => active_activation,
			 shift_over_flag => shift_over_flag,
          output_hid => output_hid
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
		wait for 5 ns;

      num_operations <= "00000100";
      layer <= weighted_sum_layer1;
      input <= "00001010";
      weight(0) <= "00001010";
      weight(1) <= "00001110";
      weight(2) <= "00001111";
		
		wait for clk_period;
		
		input <= "00011010";
		
				
		wait for clk_period;
		
		input <= "00101010";
		
		wait for clk_period;
		
		input <= "00101110";
		
		wait for clk_period;
		
		input <= "00000000";
		
      wait for clk_period;

--		wait for 5 ns;
		layer <= idle;

      wait;
   end process;

END;
