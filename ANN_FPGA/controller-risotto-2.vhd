
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.custom_pkg.all;


entity controller is
	port ( clk : 			in std_logic;
			 rst :         in std_logic;
			 wea :   		in std_logic_vector(0 downto 0);
			 dina_image :  in std_logic_vector(7 downto 0);
			 dina_weights :  in std_logic_vector(23 downto 0);
			 addra_image : in std_logic_vector(4 downto 0);
			 addra_weights : in std_logic_vector(4 downto 0)
		  );
end controller;

architecture Behavioral of controller is

signal'
 num_neurons, input : std_logic_vector(7 downto 0);
signal layer 	    			  :	layer_type;
constant num_hidden_neurons       : Integer := 3;
signal weight_hid, weight 			 : eight_bit(num_hidden_neurons-1 downto 0);
signal output_hid			   	  :	std_logic_vector(7 downto 0);
signal shift_over_flag, active_activation, rst_layer : std_logic := '0';
signal curr_state,next_state    : layer_type;


COMPONENT test_image
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT weight_hid
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT weight_out
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT hidden_layer
		port ( clk : in std_logic ;
				 num_neurons : in std_logic_vector(7 downto 0);
				 layer : in layer_type;
				 rst : in std_logic ;
				 image : in std_logic_vector(7 downto 0);
				 weight_hid : in eight_bit(num_hidden_neurons-1 downto 0);
				 shift_over_flag : out std_logic;
				 active_ativation : out std_logic;
				 output_hid : out std_logic_vector(7 downto 0)
	        );
END COMPONENT;

begin

test_image_map : test_image
  PORT MAP (clk, wea, addra_image, dina_image, image);
    
layer_map : hidden_layer
	PORT MAP (clk, num_neurons, layer, rst_layer, image, weight, shift_over_flag, active_activation, output_hid);

weight_hid_map: weight_hid
	PORT MAP (clk, "0", addr_weight_hid, in_weight_hid, out_weight_hid); 
	
weight_out_map: weight_out
	PORT MAP (clk, "0", addr_weight_out, in_weight_out, out_weight_out); 

transition : process (clk,reset)
	begin
		if rst ='1' then
			curr_state <= idle;  --default state on reset.
		elsif (rising_edge(clk)) then
			if curr_state = weighted_sum_layer1 and active_activation = '0' then
				
			curr_state <= next_state;   --state change.
		end if;
end process;



next_state_logic : process (curr_state, shift_over_flag, active_activation) begin
	
	case curr_state is
	
		when idle =>
			if active_activation = '0' then 
				next_state <= weighted_sum_layer1;
			else
				next_state <= idle;
			end if;
		
		when weighted_sum_layer1 =>
			if active_activation = '1' then 
				next_state <= activate_layer1;
			else
				next_state <= weighted_sum_layer1;
			end if;
		
		when activate_layer1 =>
			if shift_over_flag = '1' then 
				next_state <= rst_layer;
			else
				next_state <= activate_layer1;
			end if;		
		
		when reset_layer =>
			if active_activation = '0' then 
				next_state <= weighted_sum_layer2;
			else
				next_state <= rst_layer;
			end if;
			
		when weighted_sum_layer2 =>
			if active_activation = '1' then 
				next_state <= activate_layer2;
			else
				next_state <= weighted_sum_layer2;
			end if;			

		when activate_layer2 =>
			if shift_over_flag = '1' then 
				next_state <= idle;
			else
				next_state <= activate_layer2;
			end if;	

	end case;
end process;




Output: process (curr_state) begin
	
	case curr_state is 
		
		when idle =>
			rst_layer <= '1';
			num_neurons <= (others=>'0');
			layer <= idle;
			image <= (others=>'0');
			weight <= (others=>'0');
			
		when weighted_sum_layer1 =>
			rst_layer <= '0';
			num_neurons <= "00000100";
			layer <= weighted_sum_layer1;
			image <= douta_image;
			weight <= "00001";
		
		when activate_layer1 =>
			rst_layer <= '0';
			num_neurons <= "00000100";
			layer <= activate_layer1;
			image <= (others=>'0');
			weight <= (others=>'0');
	
		when reset_layer =>
			rst_layer <= '1';
			num_neurons <= (others=>'0');
			layer <= idle;
			image <= (others=>'0');
			weight <= (others=>'0');

		when weighted_sum_layer2 =>
			rst_layer <= '0';
			num_neurons <= "00000011";
			layer <= weighted_sum_layer2;
			image <= douta_image;
			weight <= "00010";		
			
			
	end case;
end process;
		
		
end process;			

end Behavioral;

