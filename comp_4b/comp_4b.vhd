-- Company :
-- Engineer:
--
-- Create Date:14/10/2020
-- Project Name:comp_4b
-- Module Name:comp_4b
-- Description:
--
-- Additional Comments:
-- Comparador de 4 bits por comportamiento


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity comp_4b is
     port( --Define Puertos 
            A,B: in std_logic_vector(3 downto 0);
            x,y,z: out std_logic
    );
end comp_4b;


architecture arq1 of comp_4b is
begin
    process (A,B) 
    begin
        if (A = B) then
            x <='0';y <='1';z <= '0';
        elsif (A > B) then
            x <='1';y <='0';z <= '0';
        else
            x <='0';y <='0';z <= '1';
        end if;
    end process;
end arq1;