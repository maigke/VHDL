-- Company :
-- Engineer:
--
-- Create Date:25/10/2020
-- Project Name:ev_u3
-- Module Name:ev_u3
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ev_u3 is
     port( --Define Puertos 
            A,B: in std_logic_vector(2 downto 0);
            d: out std_logic_vector(7 downto 0)
    );
end ev_u3;


architecture arq1 of ev_u3 is

    component sum_3 is
        port( --Define Puertos 
        A,B: in std_logic_vector(2 downto 0);
        M: out std_logic_vector(3 downto 0)
        );
    end component;

    component bcs2ss is
        port( --Define Puertos 
        A: in std_logic_vector(3 downto 0);
        d: out std_logic_vector(6 downto 0)
        );
    end component;

    signal w: std_logic_vector(3 downto 0);
    signal c: std_logic; -- bit 7 para acompletar los 8 bits de salida
    signal dd: std_logic_vector(6 downto 0);

begin
    --A,B,M
    u0: sum_3 port map(A,B,w);
    u1: bcs2ss port map(w,dd);
    c <='0'; 
    d <= c & dd;
end arq1;