-- Company :
-- Engineer:
--
-- Create Date:06/12/2020
-- Project Name:mux4_1_4bits
-- Module Name:mux4_1_4bits
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux4_1_4bits is
     port( --Define Puertos 
            A,B,C,D: in std_logic_vector(3 downto 0);
            S: in std_logic_vector(1 downto 0);
            Z: out std_logic_vector(3 downto 0)
    );
end mux4_1_4bits;


architecture arq1 of mux4_1_4bits is
begin

    Z <= A when S="00" else
         B when S="01" else
         C when S="10" else
         D when S="11";
end arq1;