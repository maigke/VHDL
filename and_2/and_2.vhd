LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;


entity and_2 is
    port(
        a: in std_logic;
        b: in std_logic;
        c: out std_logic
    );
end and_2;

architecture arq1 of and_2 is

begin

    c<= a and b;
end arq1;