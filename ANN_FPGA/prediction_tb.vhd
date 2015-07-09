-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  use work.custom_pkg.all;

  ENTITY prediction_tb IS
  END prediction_tb;

  ARCHITECTURE behavior OF prediction_tb IS 

  -- Component Declaration
          COMPONENT prediction
					port 
						(clk : in std_logic;
						enable : in std_logic;
						output_hid : in eight_bit(num_neurons-1 downto 0);
						predict : out std_logic_vector(7 downto 0)
						);
          END COMPONENT;

          --Inputs
			 SIGNAL clk :  std_logic := '0';
          SIGNAL enable :  std_logic := '0';
			 SIGNAL output_hid : eight_bit(num_neurons-1 downto 0) := ((others=> (others=>'0')));
			 
			 --Outputs
			 SIGNAL predict : std_logic_vector(7 downto 0);
			 
			 --Clock
			 constant clk_period : time := 10 ns;

  BEGIN

  -- Component Instantiation
          uut: prediction PORT MAP(
                  clk => clk,
						enable => enable,
						output_hid => output_hid,
						predict => predict
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
		
		enable <= '0';
		
		wait for clk_period*5;
		
		enable <= '1';
		
		for i in num_neurons-1 to 0 loop
			output_hid(i) <= (others=>'0');
		end loop;
		
		output_hid(0) <= "10000111";
		output_hid(1) <= "00010111";
		output_hid(2) <= "00000001";
		output_hid(3) <= "00000111";

      wait;
   end process;

END;

