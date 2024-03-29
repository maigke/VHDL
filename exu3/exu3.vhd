-- Company :
-- Engineer:
--
-- Create Date:28/10/2020
-- Project Name:exu3
-- Module Name:exu3
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity exu3 is
     port( --Define Puertos 
            E: in std_logic;
            S: in std_logic_vector( 1 downto 0);
            ENABLE: in std_logic;
            D: out std_logic_vector(3 downto 0)
    );
end exu3;


architecture arq1 of exu3 is
    signal w: std_logic_vector(2 downto 0);
    signal x: std_logic_vector(3 downto 0);
    
    component deco2_4en is
        port( --Define Puertos 
    -- X(2) - E
    -- X(1) - B
    -- X(0) - A
           X: in std_logic_vector( 2 downto 0);
           D: out std_logic_vector(3 downto 0)
         );
    end component;
begin
    --  w(2) - E
    --  w(1) - S(1)
    --  w(0) - S(0)
    w <= E & S;
    u0: deco2_4en port map(w,x);

    d(3) <= x(3) and ENABLE;
    d(2) <= x(2) and ENABLE;
    d(1) <= x(1) and ENABLE;
    d(0) <= x(0) and ENABLE;
end arq1;