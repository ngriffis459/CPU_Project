library ieee;
use ieee.std_logic_1164.all;

entity ProgramROM is 
	port (
		addr : in std_logic_vector(3 downto 0);
		instruction : out std_logic_vector(7 downto 0)
		
		);
end ProgramROM;

architecture behavior of ProgramROM is
begin

		with addr select
			
					--	first 4 Opcode Last 4 Operand
			instruction <= "00010100" when "0000", -- LDAI 4
								"00100010" when "0001", -- LDBI 2
								"01010000" when "0010", -- A <= A + B
								"10100000" when "0011", -- A >> A
								
								"00100010" when "0100", -- LDBI 2
								"01010000" when "0101", -- A <= A + B
								"10010000" when "0110", -- A << A
								"00100111" when "0111", -- LDBI 7
								"00000000" when others;
							
								
								
end behavior;
			