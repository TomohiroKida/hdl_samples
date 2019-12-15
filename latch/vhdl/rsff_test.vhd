library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
entity rsff_test is
end rsff_test;

architecture STIMULUS of rsff_test is 
    
component rsff_inst
    generic (WIDTH : integer := 4);
    port (
        R, S : in  std_logic_vector(WIDTH-1 downto 0);
        Q    : out std_logic_vector(WIDTH-1 downto 0)
    );
end component;

constant WIDTH  : integer := 4;
constant PERIOD : time    := 100ns;
signal   R, S   : std_logic_vector(WIDTH-1 downto 0);
signal   Q      : std_logic_vector(WIDTH-1 downto 0);

begin

U0 : rsff_inst generic map (WIDTH => 4)
    port map (
        R => R,
        S => S,
        Q => Q
    );

process 
    variable J : integer;
begin
    for I in 0 to 15 loop
        if (I = 0 or I = 1) then
            J := 1 - I;
        else
            J := 17 - I;
        end if;
        R <= conv_std_logic_vector(I, 4);
        S <= conv_std_logic_vector(J, 4);
        wait for PERIOD;
    end loop;
    wait;
end process;

end STIMULUS;
