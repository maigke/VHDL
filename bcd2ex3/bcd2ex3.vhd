-- Company :
-- Engineer:
--
-- Create Date:29/09/2020
-- Project Name:bcd2ex3
-- Module Name:bcd2ex3
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity bcd2ex3 is
     port( --Define Puertos 
        a,b,c,d : in std_logic;
        w,x,y,z : out std_logic
    );
end bcd2ex3;


architecture arq1 of bcd2ex3 is
begin
    w <= (b and c) or (b and not d) or (a and not b);
    x <= ((b and (not c) and d) or (a and b) or ((not b) and c) or ((not b) and d));
    y <= (((not c) and (not d)) or (c and d));
    z <= (((not c) and (not d)) or (c and (not d)));
end arq1;