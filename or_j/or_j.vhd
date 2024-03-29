-- Company :
-- Engineer:
--
-- Create Date:07/10/2020
-- Project Name:or_j
-- Module Name:or_j
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity or_j is
     port( --Define Puertos 
            a,b: in std_logic;
            f: out std_logic
    );
end or_j;


architecture arq1 of or_j is
    component or_2 is
        port( --Define Puertos 
        a: in std_logic;
        b: in std_logic;
        c: out std_logic
);
    end component;
begin            -- a,b,c
    g1: or_2 port map(a,b,f);
end arq1;