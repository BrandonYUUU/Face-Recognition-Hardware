
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity neuron_hid is
	port ( clk : in std_logic;
			 ce : in std_logic;
			 sclr : in std_logic;
			 bypass : in std_logic;
			 im : in std_logic_vector(7 downto 0);
			 weig_hid : in std_logic_vector( 7 downto 0);
			 hid_out : out std_logic_vector (15 downto 0)
		  );
end neuron_hid;

architecture Behavioral of neuron_hid is


COMPONENT mul_hid
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    bypass : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

begin

mul_hid_map : mul_hid
	port map(clk,ce,sclr,bypass,im,weig_hid,hid_out);


end Behavioral;

