library ieee;
use ieee.std_logic_1164.all;

entity Control_Unit is 
		port (
		opcode : in std_logic_vector(3 downto 0);
		state : in std_logic;
		
		Z_FLAG : in std_logic;
		C_FLAG : in std_logic;
		
		RSA : out std_logic_vector(1 downto 0);
		RSB : out std_logic_vector(1 downto 0);
		OP_SEL : out std_logic_vector(2 downto 0);
		
		INPUT_SEL : out std_logic;
		PC_LOAD : out std_logic;
		PC_INC : out std_logic;
		IR_LOAD : out std_logic;
		
		C_IN : out std_logic;
		Z_LOAD : out std_logic;
		C_LOAD : out std_logic
	);
end Control_Unit;


architecture behavior of Control_Unit is
begin

		process( opcode, state, Z_FLAG, C_FLAG)
		begin
				
				-----------------------------------------------
				-- DEFAULTS
				-----------------------------------------------
				
				-- Hold both Registers
				RSA <= "10";
				RSB <= "11";
				
				OP_SEL <= "000";
				
				-- 0 = IR operand
				-- 1 = external input
				INPUT_SEL <= '0';
				
				PC_LOAD <= '0';
				PC_INC <= '0';
				IR_LOAD <= '0';
				
				C_IN <= '0';
				
				Z_LOAD <= '0';
				C_LOAD <= '0';
				
				-----------------------------------------------
				-- FETCH
				-----------------------------------------------
				
				if state = '0' then 
					PC_INC <= '1';
					IR_LOAD <= '1';
						
				-----------------------------------------------
				-- EXECUTE
				-----------------------------------------------
				
				else 
					
					case opcode is 
							
							
							-- 0000 = NOP
							when "0000" =>
							null;
							
							-- 0001 = LDA_IMMEDIATE
							-- A <- operand
							when "0001" => 
								RSA <= "00";
								RSB <= "11";
								INPUT_SEL <= '0';
								
							-- 0010 = LDB_IMMEDIATE
							-- B <- operand
							when "0010" => 
								RSA <= "10";
								RSB <= "00";
								INPUT_SEL <= '0';
								
							-- 0011 = LDA_IN 
							-- A <- Ext Input
							when "0011" => 
								RSA <= "00";
								RSB <= "11";
								INPUT_SEL <= '1';
								
							-- 0100 = LDB_IN 
							-- B <- External Input
							when "0100" => 
								RSA <= "10";
								RSB <= "00";
								INPUT_SEL <= '1';
								
							-- 0101 = ADD
							-- A <- A + B 
							when "0101" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "010";
								C_in <= '0';
								
								Z_LOAD <= '1';
								C_LOAD <= '1';
								
							-- 0110 = AND
							-- A <- A AND B
							when "0110" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "000";
								
								Z_LOAD <= '1';
								
							-- 0111 = OR
							-- A <- A OR B
							when "0111" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "001";
								
								Z_LOAD <= '1';
								
							-- 1000 = NOT A
							-- A <- NOT A
							when "1000" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "011";
								
								Z_LOAD <= '1';
								
									
							-- 1001 = A SHIFT LEFT 
							-- A <-   A << 1
							when "1001" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "100";
								
								Z_LOAD <= '1';
								
									
							-- 1010 = A RIGHT SHIFT
							-- A <-   A >> 1
							when "1010" => 
								RSA <= "01";
								RSB <= "11";
								
								OP_SEL <= "101";
								
								Z_LOAD <= '1';
								
							-- 1011 = MOVAB
							-- B <- A
							when "1011" => 
								RSA <= "10";
								RSB <= "10";
								
							-- 1100 = JMP
							-- PC <- OPERAND
							when "1100" => 
								PC_LOAD <= '1';
								
							-- 1101 = JZ
							-- JUMP if Zero Flag = 1
							when "1101" => 
								PC_LOAD <= '1';
								
							----- Reserved cases
							
							when "1110" => 
								null;
								
							when "1111" => 
								null;
								
							when others => 
								null;
							
								
						
					end case;
						
				end if;
					
		end process;
		
end behavior;
		
								
								
								
								
								
								
								