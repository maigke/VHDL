-- Company :
-- Engineer:
--
-- Create Date:07/10/2020
-- Project Name:exOr_j
-- Module Name:exOr_j
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity exOr_j is
     port( --Define Puertos 
            a,b: in std_logic;
            f: out std_logic
    );
end exOr_j;


architecture arq1 of exOr_j is
component and_2 is
    port(
        a: in std_logic;
        b: in std_logic;
        c: out std_logic
    );
end component;

component not_1 is
    port( --Define Puertos 
    a: in std_logic;
    b: out std_logic
);
end component;

component or_2 is
    port( --Define Puertos 
    a: in std_logic;
    b: in std_logic;
    c: out std_logic
);
end component;

signal w1: std_logic;
signal w2: std_logic;
signal w3: std_logic;
signal w4: std_logic;
begin
    u1: not_1 port map(a,w1);
    u2: not_1 port map(b,w2);
    u3: and_2 port map(w1,b,w3);
    u4: and_2 port map(a,w2,w4);
    u5: or_2  port map(w3,w4,f);
end arq1;