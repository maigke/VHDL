-- Universidad: Tec Nacional de México - Campus Teziutlań
-- Engineer: Miguel Montiel Martínez
--
-- Create Date:24/09/2020
-- Project Name:ms
-- Module Name:ms
-- Description: Este es un circuito medio sumador
--
-- Additional Comments:
-- es para las clases de electronica digital


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ms is
     port( --Define Puertos 
          a,b: in std_logic;  
          c,S: out std_logic
    );
end ms;


architecture arq1 of ms is
begin

    c <= a and b;
    --S <= a xor b;
    S <= ((not(a)) and (b)) or ((a) and (not(b)));

end arq1;