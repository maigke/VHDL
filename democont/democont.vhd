-- Company :
-- Engineer:
--
-- Create Date:20/11/2020
-- Project Name:democont
-- Module Name:democont
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity democont is
     port( --Define Puertos 
            mclk: in std_logic;
            q: out std_logic_vector(7 downto 0)
    );
end entity;


architecture arq1 of democont is

    component clkdiv is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            clk_8 : out std_logic
        );
    end component;

    component cont8 is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            q: out std_logic_vector(7 downto 0)
           );
    end component;

    signal w: std_logic;
begin

    u0: clkdiv port map(mclk,'1',w);
    u1: cont8 port map(w, '1',q);
end arq1;