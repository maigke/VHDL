-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: anahi
-- 
-- Create Date:    02/11/2020 18:19:31
-- Project Name:   sum3r
-- Module Name:    sum3r.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity sum3r is
port(
A,B: in std_logic_vector(2 downto 0 );
R_nS: in std_logic;
M: out std_logic_vector(3 downto 0)
);
end sum3r;

architecture arq1 of sum3r is
signal w: std_logic_vector(3 downto 0);
signal val1, val2, res: integer;
begin

val1<= to_integer(unsigned(A));
val2<= to_integer(unsigned(B));
res<= val1 - val2 when R_nS='1' else
val1 + val2;
w<= std_logic_vector(to_signed(res, M'length));
M<= w;
end arq1;
