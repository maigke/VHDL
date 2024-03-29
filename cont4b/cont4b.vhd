-- Company :
-- Engineer:
--
-- Create Date:19/11/2020
-- Project Name:cont4b
-- Module Name:cont4b
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4b is
     port( --Define Puertos 
            clr,clk: in std_logic;
            q: out std_logic_vector(7 downto 0)
    );
end cont4b;


architecture arq1 of cont4b is
    signal w : std_logic_vector(7 downto 0):=X"00";
begin

    process (clr,clk) begin
        if clr = '0' then
            w <= X"00";
        else
            if (rising_edge(clk)) then
                w <= std_logic_vector(unsigned(w) + 1);
            end if;
        end if;
        q<=w;
    end process;
end arq1;