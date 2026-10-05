library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockDivider is
    port (
        CLK_50MHZ : in  std_logic;
        RESET_L   : in  std_logic;
        SLOW_CLK  : out std_logic
    );
end ClockDivider;

architecture behavior of ClockDivider is

    -- 50 MHz / 2 Hz output:
    -- toggle every 12,500,000 input clocks
    constant MAX_COUNT : integer := 12_499_999;

    signal count   : integer range 0 to MAX_COUNT := 0;
    signal clk_reg : std_logic := '0';

begin

    process(CLK_50MHZ, RESET_L)
    begin

        if RESET_L = '0' then
            count   <= 0;
            clk_reg <= '0';

        elsif rising_edge(CLK_50MHZ) then

            if count = MAX_COUNT then
                count   <= 0;
                clk_reg <= not clk_reg;
            else
                count <= count + 1;
            end if;

        end if;

    end process;

    SLOW_CLK <= clk_reg;

end behavior;