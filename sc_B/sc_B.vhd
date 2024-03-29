-- Company :
-- Engineer:
--
-- Create Date:28/09/2020
-- Project Name:sc_B
-- Module Name:sc_B
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity sc_B is
     port( --Define Puertos 
            a,b,ci: in std_logic;
            co,S: out std_logic
    );
end sc_B;


architecture arq1 of sc_B is
begin
    S<= ci xor a xor b;
    co <= (ci and (a xor b)) or (a and b); 
end arq1;