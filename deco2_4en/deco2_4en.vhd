-- Company :
-- Engineer:
--
-- Create Date:28/10/2020
-- Project Name:deco2_4en
-- Module Name:deco2_4en
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity deco2_4en is
     port( --Define Puertos 
     -- X(2) - E
     -- X(1) - B
     -- X(0) - A
            X: in std_logic_vector( 2 downto 0);
            D: out std_logic_vector(3 downto 0)
    );
end deco2_4en;


architecture arq1 of deco2_4en is
begin

    with X select
        D <= "0001" when "100",
             "0010" when "101",
             "0100" when "110",
             "1000" when "111",
             "0000" when others; 
end arq1;