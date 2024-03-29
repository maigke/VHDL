-- Company :
-- Engineer:
--
-- Create Date:23/11/2020
-- Project Name:democont2
-- Module Name:democont2
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity democont2 is
     port( --Define Puertos 
            P: in std_logic_vector(3 downto 0);
            clr, enp, load, mclk: in std_logic;
            Q:out std_logic_vector(3 downto 0)
    );
end democont2;


architecture arq1 of democont2 is
    signal w: std_logic;

    component clkdiv is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            clk_8 : out std_logic
           );
    end component;

    component cont4b_memoria is
        port( --Define Puertos 
        P: in std_logic_vector( 3 downto 0);
        clr,enp, load, clk: in std_logic;
        Q: out std_logic_vector(3 downto 0)
        );
    end component;
begin
    u0: clkdiv port map (mclk, '1',w);
    u1: cont4b_memoria port map(P, clr,enp, load, w, Q);
end arq1;