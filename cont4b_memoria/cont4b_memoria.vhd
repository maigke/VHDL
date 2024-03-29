-- Company :
-- Engineer:
--
-- Create Date:23/11/2020
-- Project Name:cont4b_memoria
-- Module Name:cont4b_memoria
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4b_memoria is
     port( --Define Puertos 
            P: in std_logic_vector( 3 downto 0);
            clr,enp, load, clk: in std_logic;
            Q: out std_logic_vector(3 downto 0)
    );
end cont4b_memoria;


architecture arq1 of cont4b_memoria is
    signal w:std_logic_vector(3 downto 0):="0000";
begin
    process (clr,clk,load,enp) begin
        if clr = '0' then
            w <= "0000";
            Q <= w;
        elsif rising_edge(clk) then
            if load = '0' then
                w <= P;
                Q <= w;
            elsif load = '1' and enp = '0' then
                w <= w;
                Q <= w;
            elsif load ='1' and enp = '1' then
                w <=std_logic_vector(unsigned(w) + 1);
                Q <=w;
            end if;
        end if;
    end process;
end arq1;