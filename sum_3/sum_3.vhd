-- Company :
-- Engineer:
--
-- Create Date:25/10/2020
-- Project Name:sum_3
-- Module Name:sum_3
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity sum_3 is
     port( --Define Puertos 
            A,B: in std_logic_vector(2 downto 0);
            M: out std_logic_vector(3 downto 0)
    );
end sum_3;


architecture arq1 of sum_3 is

    component sc is
    port( --Define Puertos 
    a,b,ci : in std_logic;
    co,S : out std_logic 
);
end component;

signal w1,w2: std_logic;
begin
                -- a , b   , ci, co, S
u0: sc port map (A(0), B(0), '0', w1, M(0));
u1: sc port map (A(1), B(1),  w1, w2, M(1));
u2: sc port map (A(2), B(2),  w2, M(3), M(2));
end arq1;