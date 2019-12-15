library IEEE;
use IEEE.std_logic_1164.all;

entity rsff is
    port (
        CLK, RESET : in  std_logic;
        D          : in  std_logic;
        Q          : out std_logic
    );
end rsff;

architecture RTL of rsff is 
begin

    process(CLK, RESET) 
    begin
        if(RESET = '1') then
            Q <= '0';
        elsif(CLK'event and CLK='1') then
            Q <= D;
        end if;
    end process;

end RTL;
