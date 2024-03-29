-- Company :
-- Engineer:
--
-- Create Date:13/10/2020
-- Project Name:bcs2ss
-- Module Name:bcs2ss
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity bcs2ss is
     port( --Define Puertos 
            A: in std_logic_vector(3 downto 0);
            d: out std_logic_vector(6 downto 0)
    );
end bcs2ss;


architecture arq1 of bcs2ss is
begin
    process (A) begin
        case A is
            when "0000" => d <="1111110";
            when "0001" => d <="0110000";
            when others => d <="0000000";
        end case;
    end process;
end arq1;