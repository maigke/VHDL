-- Company :
-- Engineer:
--
-- Create Date:17/11/2020
-- Project Name:cont8
-- Module Name:cont8
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont8 is
    port(
     mclk: in std_logic;
     clr: in std_logic;
     q: out std_logic_vector(7 downto 0)
    );
 end cont8;
 
 architecture arq1 of cont8 is

 signal count: std_logic_vector(7 downto 0);
 begin
     div: process (clr, mclk)
     begin
         if(clr = '0') then
             count <= "00000000";
         elsif (mclk 'event and mclk = '1') then
             count <= std_logic_vector(unsigned(count) + 1);
         end if;
     q<=count;
     end process div;
 end arq1;