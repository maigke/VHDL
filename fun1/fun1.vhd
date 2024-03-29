-- Company :
-- Engineer:
--
-- Create Date:09/08/2020
-- Project Name:fun1
-- Module Name:fun1
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity fun1 is
     port( --Define Puertos
            a: in std_logic; 
            b: in std_logic;
            c: in std_logic;
            d: in std_logic;
            e: out std_logic
    );
end fun1;


architecture arq1 of fun1 is
    component and_2
    port(
        a: in std_logic;
        b: in std_logic;
        c: out std_logic
    );
    end component;

    component or_2
    port(
        a: in std_logic;
        b: in std_logic;
        c: out std_logic
    );
    end component;

    signal x1, x2 : std_logic;
begin
    u1: and_2 port map(a,b,x1);
    u2: and_2 port map(c,d,x2);
    u3: or_2 port map(x1,x2,e);
end arq1;
