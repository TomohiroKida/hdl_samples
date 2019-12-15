library IEEE;
use IEEE.std_logic_1164.all;

entity rsff_inst is
    generic (WIDTH : integer := 4);
    port (
        R,S : in  std_logic_vector(WIDTH-1 downto 0);
        Q   : out std_logic_vector(WIDTH-1 downto 0)
    );
end rsff_inst;

architecture RTL of rsff_inst is 

component rsff
    port (
        CLK, RESET : in  std_logic;
        D          : in  std_logic;
        Q          : out std_logic
    );
end component;

constant VALUE_1 : std_logic := '1';
-- modify for VHDL'87
signal VALUE_1_SIG : std_logic;

begin

    -- modify for VHDL'87
    VALUE_1_SIG <= VALUE_1;

    gen_rsff : for I in 0 to WIDTH-1 generate
        RS : rsff 
        port map (
            CLK   => S(I), 
            RESET => R(I),
            D     => VALUE_1_SIG, 
            Q     => Q(I)
        );
    end generate;

end RTL;
