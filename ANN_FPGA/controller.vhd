
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.custom_pkg.all;

-- num_neurons defined in the custom_package --

entity controller is
	port ( clk    : 	 in std_logic;
			 reset  :    in std_logic;
			 output :    out std_logic_vector(7 downto 0)
   	  );
end controller;

architecture Behavioral of controller is

signal num_operations, input, dina_image, image, output_temp, predict : std_logic_vector(7 downto 0);
signal in_weight_hid, out_weight_hid, in_weight_out, out_weight_out : std_logic_vector((num_neurons*8)-1 downto 0);  
signal addr_weight_hid, addra_image : std_logic_vector(7 downto 0);
signal addr_weight_out 		  : std_logic_vector(5 downto 0);
signal layer 	    			  : layer_type;
signal weight				 	  : eight_bit(num_neurons-1 downto 0);
signal output_hid				  : eight_bit(num_neurons-1 downto 0);
signal layer_output			  : eight_bit(num_neurons downto 0);
signal shift_over_flag, active_activation, rst_layer, predict_en : std_logic;
signal curr_state,next_state    : layer_type;


COMPONENT test_image
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT weight_hid
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(319 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(319 DOWNTO 0)
  );
END COMPONENT;

COMPONENT weight_out
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(319 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(319 DOWNTO 0)
  );
END COMPONENT;

COMPONENT hidden_layer
		generic ( N : Integer );
		port ( clk : in std_logic ;
				 num_operations : in std_logic_vector(7 downto 0);
				 layer : in layer_type;
				 rst : in std_logic ;
				 input : in std_logic_vector(7 downto 0);
				 weight : in eight_bit(N-1 downto 0);
				 shift_over_flag : out std_logic;
				 active_activation : out std_logic;
				 output_hid : out eight_bit(N-1 downto 0)
	        );
END COMPONENT;

COMPONENT prediction is
	port (clk : in std_logic;
			enable : in std_logic;
			output_hid : in eight_bit(num_neurons-1 downto 0);
			predict : out std_logic_vector(7 downto 0)
			);
END COMPONENT;

begin

-------------------------------------------------------------------------------------------------------------

output <= predict;

-------------------------------------------------------------------------------------------------------------

test_image_map : test_image
  PORT MAP (clk, "0", addra_image, dina_image, image);
    
layer_map : hidden_layer
	GENERIC MAP ( N => num_neurons )
	PORT MAP (clk, num_operations, layer, rst_layer, input, weight, shift_over_flag, active_activation, output_hid);

weight_hid_map: weight_hid
	PORT MAP (clk, "0", addr_weight_hid, in_weight_hid, out_weight_hid); 
	
weight_out_map: weight_out
	PORT MAP (clk, "0", addr_weight_out, in_weight_out, out_weight_out); 
	
prediction_map : prediction
	PORT MAP (clk, predict_en, output_hid, predict);
	
	
-------------------------------------------------------------------------------------------------------------	

transition : process (clk,reset,curr_state)
 variable num : Integer;
	begin
		if reset = '1' then
			curr_state <= idle;  
			addra_image <= (others=>'0');
			addr_weight_hid <= (others=>'0');
			addr_weight_out <= (others=>'0');
			layer_output <= (others=> (others=>'0'));
			output_temp <= (others=>'0');
			in_weight_hid <= (others=>'0');
			in_weight_out <= (others=>'0');
			dina_image <= (others=>'0');
			num := 0;
			
		elsif rising_edge(clk) then
		
				if curr_state = weighted_sum_layer1 then
						addra_image <= addra_image + 1;
						addr_weight_hid <= addr_weight_hid + 1;
						addr_weight_out <= (others=>'0');
				
				elsif curr_state = weighted_sum_layer2 then
						addra_image <= (others=>'0');
						addr_weight_hid <= (others=>'0');
						output_temp <= layer_output(num);
						if num < num_neurons then
							num := num + 1;
						else 	
							num := 0;
						end if ;
						addr_weight_out <= addr_weight_out + 1;
				
				elsif curr_state = activate_layer1 then
						layer_output(0) <= (others=>'0'); 
						layer_output(num_neurons downto 1) <= output_hid;
						addra_image <= (others=>'0');
						addr_weight_hid <= (others=>'0');
						addr_weight_out <= (others=>'0');
				
				elsif curr_state = activate_layer2 then
						layer_output(0) <= (others=>'0'); 
						layer_output(num_neurons downto 1) <= output_hid;
						addra_image <= (others=>'0');
						addr_weight_hid <= (others=>'0');
						addr_weight_out <= (others=>'0');
						
				else
						addra_image <= (others=>'0');
						addr_weight_hid <= (others=>'0');
						addr_weight_out <= (others=>'0') ;		
				end if;
				
				curr_state <= next_state;   
		
		end if;
end process;

---------------------------------------------------------------------------------------------------------

image_weight_allocate : process (curr_state, image, out_weight_hid, out_weight_out, output_temp) begin
	
	if curr_state = weighted_sum_layer1 then	
			input <= image;
			for i in num_neurons-1 downto 0 loop
				weight(i) <= out_weight_hid(((i+1)*8)-1 downto i*8);
			end loop;
			
	elsif curr_state = weighted_sum_layer2 then
			input <= output_temp;
			for i in num_neurons-1 downto 0 loop
				weight(i) <= out_weight_out(((i+1)*8)-1 downto i*8);
			end loop;
	
	else 
			input <= (others=>'0');
			weight <= ((others=> (others=>'0')));
			
	end if;
	
end process;

---------------------------------------------------------------------------------------------------------

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
				next_state <= reset_layer;
			else
				next_state <= activate_layer1;
			end if;		
		
		when reset_layer =>
			if active_activation = '0' then 
				next_state <= weighted_sum_layer2;
			else
				next_state <= reset_layer;
			end if;
			
		when weighted_sum_layer2 =>
			if active_activation = '1' then 
				next_state <= activate_layer2;
			else
				next_state <= weighted_sum_layer2;
			end if;			

		when activate_layer2 =>
			if shift_over_flag = '1' then 
				next_state <= predict_layer;
			else
				next_state <= activate_layer2;
			end if;
		
		when predict_layer =>
			next_state <= predict_layer;

	end case;
end process;

-----------------------------------------------------------------------------------------------------------

Output_process: process (curr_state) begin
	
	case curr_state is 
		
		when idle =>
			rst_layer <= '1';
			num_operations <= (others=>'0');
			layer <= idle;
			predict_en <= '0';
						
		when weighted_sum_layer1 =>
			rst_layer <= '0';
			num_operations <= "11100000";
			layer <= weighted_sum_layer1;
			predict_en <= '0';
		
		when activate_layer1 =>
			rst_layer <= '0';
			num_operations <= "11100000";
			layer <= activate_layer1;
			predict_en <= '0';
			
		when reset_layer =>
			rst_layer <= '1';
			num_operations <= (others=>'0');
			layer <= idle;
			predict_en <= '0';
			
		when weighted_sum_layer2 =>
			rst_layer <= '0';
			num_operations <= "00101000";
			layer <= weighted_sum_layer2;
			predict_en <= '0';			

		when activate_layer2 =>
			rst_layer <= '0';
			num_operations <= "00101000";
			layer <= activate_layer2;
			predict_en <= '0';
			
		when predict_layer =>
			rst_layer <= '1';
			num_operations <= (others=>'0');
			layer <= idle;
			predict_en <= '1';
					
	end case;
	
end process;
	
--------------------------------------------------------------------------------------------------------	
				

end Behavioral;

