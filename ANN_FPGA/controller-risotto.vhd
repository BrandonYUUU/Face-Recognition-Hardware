
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity controller is
	port ( clk : 			in std_logic;
			 rst :         in std_logic;
			 wea :   		in std_logic_vector(0 downto 0);
			 dina_image :  in std_logic_vector(7 downto 0);
			 dina_weights :  in std_logic_vector(23 downto 0);
			 addra_image : in std_logic_vector(4 downto 0);
			 douta_image : out std_logic_vector(7 downto 0);
			 addra_weights : in std_logic_vector(4 downto 0);
			 douta_weights : out std_logic_vector(23 downto 0)
		  );
end controller;

architecture Behavioral of controller is

signal douta_image, input_neurons : std_logic_vector(7 downto 0);
signal layer 	    					 :	std_logic_vector(1 downto 0);
signal rst			 					 : std_logic; 
constant num_hidden_neurons       : Integer := 3;
signal weight_hid 					 : std_logic_vector(num_hidden_neurons-1 downto 0);
signal output_hid						 :	std_logic_vector(7 downto 0);


COMPONENT test_image
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT weights
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
				 input_neurons : in std_logic_vector(7 downto 0);
				 layer : in std_logic_vector(1 downto 0);
				 rst : in std_logic ;
				 image : in std_logic_vector(7 downto 0);
				 weight_hid : in eight_bit(num_hidden_neurons-1 downto 0);
				 output_hid : out std_logic_vector(7 downto 0)
	        );
END COMPONENT;

begin

test_image_map : test_image
  PORT MAP (clk,wea,addra_image,dina_image,douta_image);
  
weights_map : weights
  PORT MAP (clk,wea,addra_weights,dina_weights,douta_weights);
  
hidden_map : hidden_layer
	PORT MAP (clk,input_neurons,layer,rst,douta_image,weight_hid,output_hid);


	



end Behavioral;

