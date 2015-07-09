--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:02:05 05/18/2015
-- Design Name:   
-- Module Name:   C:/Users/sai/OneDrive/Project/Code/ANN_proto_final/activation_hid_count_tb.vhd
-- Project Name:  ANN_proto_final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: activation_hid_count
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY activation_hid_count_tb IS
END activation_hid_count_tb;
 
ARCHITECTURE behavior OF activation_hid_count_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT activation_hid_count
    PORT(
         clk : IN  std_logic;
         count_en : IN  std_logic;
         num_operations : IN  std_logic_vector(7 downto 0);
         activation : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal count_en : std_logic := '0';
   signal num_operations : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal activation : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: activation_hid_count PORT MAP (
          clk => clk,
          count_en => count_en,
          num_operations => num_operations,
          activation => activation
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

		count_en <= '0';
		
		wait for clk_period*4;
		
		count_en <= '1';
		num_operations <= "00000111";

      wait;
   end process;

END;


