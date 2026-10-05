library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
		port (
				d0	: in std_logic_vector(7 downto 0);
				d1	: in std_logic_vector(7 downto 0);
				
				sel : in std_logic; 
				y : out std_logic_vector(7 downto 0)
				
			);
end mux2x1;

architecture behavior of mux2x1 is begin

	y<= d0 when sel = '0' else
		d1;
		
end behavior;