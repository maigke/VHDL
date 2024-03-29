-- Company :
-- Engineer:
--
-- Create Date:16/10/2020
-- Project Name:bcd2ssa
-- Module Name:bcd2ssa
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity bcd2ssa is
     port( --Define Puertos 
          A: in std_logic_vector(3 downto 0);
          BI_L : in std_logic;
          nA_C : in std_logic;
          d: out std_logic_vector(7 downto 0)  
    );
end bcd2ssa;


architecture arq1 of bcd2ssa is
    signal B: std_logic_vector(7 downto 0);
    signal C: std_logic_vector(7 downto 0);
begin

    with A select
    B <= X"7E" when "0000",
         X"30" when "0001",
         X"6D" when "0010",
         X"79" when "0011",
         X"33" when "0100",
         X"5B" when "0101",
         X"5F" when "0110",
         X"70" when "0111",
         X"7F" when "1000",
         X"73" when "1001",
         X"4F" when others;

    C <= B when BI_L = '0' else "00000000"; 
    d <= C when nA_C = '1' else not C;
    
end arq1;