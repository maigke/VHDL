-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: Usuario
-- 
-- Create Date:    22/11/2018 18:19:29
-- Project Name:   con_bin_bcd
-- Module Name:    con_bin_bcd.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity con_bin_bcd is
   port(
             num: in std_logic_vector(7 downto 0);
             cen: out std_logic_vector(3 downto 0);  
             dec: out std_logic_vector(3 downto 0);
             uni: out std_logic_vector(3 downto 0)
        );
end con_bin_bcd;

architecture arq1 of con_bin_bcd is
begin
bin_to_bdc: process(num)
 variable shift:unsigned(19 downto 0); --- espacios de desplazamiento
 alias n is shift(7 downto 0);         --- numeros binarios o botones de entrada
 alias u is shift(11 downto 8);        --- unidades
 alias d is shift(15 downto 12);       --- decenas 
 alias c is shift(19 downto 16);       --- centenas
 begin
 n:= unsigned(num);
 u:=X"0";
 d:=X"0";
 c:=X"0";
for i in 1 to n 'length loop  ----- tomamo la longitud del numero 
   if u>= 5 then              ----- condicion si hay un numero mayor o igual a 5 se suma 3
       u:= u + 3;
   end if;
   if d>= 5 then
       d:= d + 3;
   end if;
   if c>= 5 then
       c:= c + 3;
   end if;
---- corrimientos
shift:= shift_left(shift,1);
end loop;
cen<= std_logic_vector(c);
dec<= std_logic_vector(d);
uni<= std_logic_vector(u);
end process;
end arq1;
