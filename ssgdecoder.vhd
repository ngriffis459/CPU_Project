library ieee;
use ieee.std_logic_1164.all;

entity ssgdecoder is

port (
	num : in std_logic_vector(3 downto 0);
	disp : out std_logic_vector(0 to 6)
);

end ssgdecoder;

architecture behavior of ssgdecoder is

signal disph : std_logic_vector(0 to 6);

begin

with num select
	disph <= "1111110" when "0000",
				"0110000" when "0001",
				"1101101" when "0010",
				"1111001" when "0011",
				"0110011" when "0100",
				"1011011" when "0101",
				"1011111" when "0110",
				"1110000" when "0111",
				"1111111" when "1000",
				"1110011" when "1001",
				"1110111" when "1010",
				"0011111" when "1011",
				"1001110" when "1100",
				"0111101" when "1101",
				"1001111" when "1110",
				"1000111" when "1111",
				"0011101" when others;
	disp <= not disph;

end behavior;