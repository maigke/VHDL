-------------------------------------------------------------------------------
--
-- Company : ITS Teziutlan 
-- Engineer: Miguel Montiel Martinez
-- 
-- Create Date:    17/07/2015 01:16:38
-- Project Name:   mux4_1b
-- Module Name:    mux4_1b.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity mux4_1b is
   port( 
	d	: in bit_vector(3 downto 0);
	s	: in bit_vector(1 downto 0);
	y	: out bit 
);
end mux4_1b;

architecture arq1 of mux4_1b is
begin
M: with s select
	y <=    d(0) when "00",
		d(1) when "01",
		d(2) when "10",
		d(3) when others;
end arq1;
