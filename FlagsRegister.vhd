library ieee;
use ieee.std_logic_1164.all;

entity FlagsRegister is
		port (
			CPU_CLK : in std_logic;
			CPU_RESET_L : in std_logic;
			
			ALU_RESULT : in std_logic_vector(3 downto 0);
			ALU_COUT : in std_logic;
			
			Z_LOAD : in std_logic;
			C_LOAD : in std_logic;
			
			Z_FLAG : out std_logic;
			C_FLAG : out std_logic
	);
end FlagsRegister;

architecture behavior of FlagsRegister is 

		signal z_reg : std_logic;
		signal c_reg : std_logic;
		
	begin

		process(CPU_CLK, CPU_RESET_L)
		begin 
		
			if CPU_RESET_L = '0' then
			
				z_reg <= '0';
				c_reg <= '0';
				
			elsif rising_edge(CPU_CLK) then
			
					-- Update Zflag when requested
					if  Z_LOAD = '1' then
						if ALU_RESULT = "0000" then 
							z_reg <= '1';
						else 
							z_reg <= '0';
						end if;
					end if;
					
						
					--Update Carry flag when requested
					if C_LOAD = '1' then
						c_reg <= ALU_COUT;
					end if;
					
			end if;
			
		end process;
		
		Z_FLAG <= z_reg;
		C_FLAG <= c_reg;
		
end behavior;
