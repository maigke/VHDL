-- Company :
-- Engineer:
--
-- Create Date:02/10/2020
-- Project Name:compa_1a
-- Module Name:compa_1a
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity compa_1a is
     port( --Define Puertos 
           a,b : in std_logic;
           x,y,z: out std_logic 
    );
end compa_1a;


architecture arq1 of compa_1a is
begin
    x <= a and (not b);
    y <= not(a xor b);
    z <= (not a) and b;
end arq1;