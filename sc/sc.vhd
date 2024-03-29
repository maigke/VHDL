-- Company :
-- Engineer:
--
-- Create Date:24/09/2020
-- Project Name:sc
-- Module Name:sc
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity sc is
     port( --Define Puertos 
           a,b,ci : in std_logic;
           co,S : out std_logic 
    );
end sc;


architecture arq1 of sc is
begin
    co <= ((ci) and (a xor b)) or (a and b);
    S  <= ci xor b xor a; 

end arq1;