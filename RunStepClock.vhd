library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RunStepClock is
    port (
        CLK_50MHZ  : in  std_logic;
        RESET_L    : in  std_logic;

        RUN_MODE   : in  std_logic;  -- SW4
        STEP_KEY_L : in  std_logic;  -- KEY1, active low

        CPU_CLK    : out std_logic
    );
end RunStepClock;


architecture behavior of RunStepClock is

    -- 50,000,000 / 2 = 25,000,000
    -- Generate one CPU pulse every 25 million clocks = 2 Hz
    constant MAX_COUNT : integer := 24_999_999;

    signal count : integer range 0 to MAX_COUNT := 0;

    -- Synchronize the pushbutton
    signal key_sync1 : std_logic := '1';
    signal key_sync2 : std_logic := '1';
    signal key_old   : std_logic := '1';

    signal cpu_pulse : std_logic := '0';

begin

    process(CLK_50MHZ, RESET_L)
    begin

        if RESET_L = '0' then

            count     <= 0;
            key_sync1 <= '1';
            key_sync2 <= '1';
            key_old   <= '1';
            cpu_pulse <= '0';

        elsif rising_edge(CLK_50MHZ) then

            ------------------------------------------------
            -- Synchronize KEY1
            ------------------------------------------------
            key_sync1 <= STEP_KEY_L;
            key_sync2 <= key_sync1;
            key_old   <= key_sync2;

            -- Default CPU clock pulse low
            cpu_pulse <= '0';


            ------------------------------------------------
            -- RUN MODE
            ------------------------------------------------
            if RUN_MODE = '1' then

                if count = MAX_COUNT then
                    count     <= 0;
                    cpu_pulse <= '1';
                else
                    count <= count + 1;
                end if;


            ------------------------------------------------
            -- STEP MODE
            ------------------------------------------------
            else

                count <= 0;

                -- Detect button press:
                -- previous = 1, current = 0
                if key_old = '1' and key_sync2 = '0' then
                    cpu_pulse <= '1';
                end if;

            end if;

        end if;

    end process;


    CPU_CLK <= cpu_pulse;

end behavior;