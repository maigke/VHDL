-- Company :
-- Engineer:
--
-- Create Date:23/09/2020
-- Project Name:not_1
-- Module Name:not_1
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity not_1 is
     port( --Define Puertos 
            a: in std_logic;
            b: out std_logic
    );
end not_1;


architecture arq1 of not_1 is
begin
    b <= not a;
end arq1;