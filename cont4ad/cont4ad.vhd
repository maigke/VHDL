-- Company :
-- Engineer:
--
-- Create Date:18/11/2020
-- Project Name:cont4ad
-- Module Name:cont4ad
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4ad is
     port( --Define Puertos 
        clk: in std_logic;
        D_nU: in std_logic;
        q: out std_logic_vector(3 downto 0)    
    );
end cont4ad;


architecture arq1 of cont4ad is
    signal w: std_logic_vector(3 downto 0):="0000";
begin

    process (clk, D_nU) begin
        if ( rising_edge(clk)) then
            if (D_nU = '0') then
                w <= std_logic_vector(unsigned(w) + 1);
            else
                w <= std_logic_vector(unsigned(w) - 1);
            end if;
        end if;
        q <= w;
    end process;
end arq1;