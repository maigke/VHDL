-- Company :
-- Engineer:
--
-- Create Date:09/08/2020
-- Project Name:or_2
-- Module Name:or_2
-- Description: Es una compuerta or de dos entradas
-- 
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity or_2 is
     port( --Define Puertos 
            a: in std_logic;
            b: in std_logic;
            c: out std_logic
    );
end or_2;


architecture arq1 of or_2 is
begin
    c<= a or b;
end arq1;