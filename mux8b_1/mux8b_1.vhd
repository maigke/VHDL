-- Company :
-- Engineer:
--
-- Create Date:15/10/2020
-- Project Name:mux8b_1
-- Module Name:mux8b_1
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux8b_1 is
     port( --Define Puertos 
            I: in std_logic_vector(7 downto 0);
            S: in std_logic_vector(2 downto 0);
            Y: out std_logic
    );
end mux8b_1;


architecture arq1 of mux8b_1 is
begin
    Y<= I(0) when S="000" else
        I(1) when S="001" else
        I(2) when S="010" else
        I(3) when S="011" else
        I(4) when S="100" else
        I(5) when S="101" else
        I(6) when S="010" else    
        I(7);

end arq1;