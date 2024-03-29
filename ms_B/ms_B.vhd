-- Company :
-- Engineer:
--
-- Create Date:28/09/2020
-- Project Name:ms_B
-- Module Name:ms_B
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ms_B is
     port( --Define Puertos 
            a,b : in std_logic;
            co,S: out std_logic
    );
end ms_B;


architecture arq1 of ms_B is
begin
    co <= a and b;
    S <= a xor b;
end arq1;