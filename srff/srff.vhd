-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: mike
-- 
-- Create Date:    09/11/2020 22:29:23
-- Project Name:   srff
-- Module Name:    srff.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity srff2 is
   port(
		clk,s,r: in std_logic;
		Q: out std_logic
 );
end srff2;

architecture arq1 of srff2 is
signal wire: std_logic:='1';
begin

process (clk,s,r) begin
	if (clk 'event and clk='0') then
		if (s = '1' and r = '1' ) then
			wire <= wire;
		elsif (s = '1' and r ='0') then
			wire <= '0';
		elsif (s ='0' and r='1') then
			wire <= '1';
		else
			wire <= 'U';
		end if;
	end if;
	Q <= wire;
	end process;
end arq1;
