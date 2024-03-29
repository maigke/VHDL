-- Company :
-- Engineer:
--
-- Create Date:15/10/2020
-- Project Name:mux8_1
-- Module Name:mux8_1
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux8_1 is
     port( --Define Puertos 
            I0,I1,I2,I3, I4,I5,I6,I7: in std_logic;
            a,b,c: in std_logic;
            Y: out std_logic
    );
end mux8_1;


architecture arq1 of mux8_1 is
begin

    Y<= I0 when a='0' and b ='0' and c='0' else
        I1 when a='0' and b ='0' and c='1' else
        I2 when a='0' and b ='1' and c='0' else
        I3 when a='0' and b ='1' and c='1' else
        I4 when a='1' and b ='0' and c='0' else
        I5 when a='1' and b ='0' and c='1' else
        I6 when a='1' and b ='1' and c='0' else    
        I7;
end arq1;