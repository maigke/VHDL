-- Company :
-- Engineer:
--
-- Create Date:28/10/2020
-- Project Name:ffd
-- Module Name:ffd
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ffd is
     port( --Define Puertos 
            D,clk : in std_logic;
            Q: out std_logic
    );
end ffd;


architecture arq1 of ffd is
begin
    process (clk) begin
        if (rising_edge(clk)) then
            Q<=D;
        end if;
    end process;
end arq1;