-- Company :
-- Engineer:
--
-- Create Date:15/10/2020
-- Project Name:entx
-- Module Name:entx
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity entx is
     port( --Define Puertos 
            a,b,c: in std_logic;
            f: out std_logic
    );
end entx;


architecture arq1 of entx is
begin

    f<= '1' when a='0' and b ='0' and c='0' else
        '1' when a='0' and b ='1' and c='1' else
        '1' when a='1' and b ='1' and c='0' else
        '1' when a='1' and b ='1' and c='1' else
        '0';

end arq1;