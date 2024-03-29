-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: mike
-- 
-- Create Date:    10/11/2020 23:38:09
-- Project Name:   ff_t
-- Module Name:    ff_t.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity ff_t is
   port( t,clk: in std_logic;
		q: out std_logic);
end ff_t;

architecture arq1 of ff_t is
signal w: std_logic :='0';
begin

	process (clk,t) begin
		if (clk 'event and clk='1') then
			if (t = '1') then
				w <= not(w);
			else
				w <= w;
			end if;
		end if;
	q <= w;
	end process;
end arq1;
