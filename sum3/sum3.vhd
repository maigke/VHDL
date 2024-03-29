-- Company :
-- Engineer:
--
-- Create Date:25/10/2020
-- Project Name:sum3
-- Module Name:sum3
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity sum3 is
     port( --Define Puertos 
            A,B: in std_logic_vector(2 downto 0);
            R_nS: in std_logic;
            M: out std_logic_vector(3 downto 0)
    );
end sum3;


architecture arq1 of sum3 is
    signal w: std_logic_vector(3 downto 0);
    signal val1, val2, res: integer; 
begin
    val1<= to_integer(unsigned(A));
    val2<= to_integer(unsigned(B));
    res<= (val1 - val2) when (R_nS ='1') else
        (val1 + val2);
    w <= std_logic_vector(to_signed(res, M'length));
    M <= w;    
end arq1;