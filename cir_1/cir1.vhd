-- Company :
-- Engineer:
--
-- Create Date:13/10/2020
-- Project Name:cir_1
-- Module Name:cir1
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cir1 is
     port( --Define Puertos 
            a: in std_logic_vector(1 downto 0);
            c: out std_logic
    );
end cir1;


architecture lolo of cir1 is
    signal cc: std_logic;
begin
    with a select cc <=
         '1' when "00", 
         '0' when "01",
         '1' when "10",
         '0' when others;
    c <= cc;

end lolo;