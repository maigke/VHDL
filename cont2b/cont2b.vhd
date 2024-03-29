-- Company :
-- Engineer:
--
-- Create Date:19/11/2020
-- Project Name:cont2b
-- Module Name:cont2b
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont2b is
     port( --Define Puertos 
            clk: in std_logic;
            q:out std_logic_vector(1 downto 0)
    );
end cont2b;


architecture arq1 of cont2b is
    component ff_t is
        port( t,clk: in std_logic;
        q: out std_logic);
    end component;
signal w: std_logic;
begin

    u0: ff_t port map('1',clk,w);
    u1: ff_t port map('1',w,q(1));
    q(0) <= w;

end arq1;