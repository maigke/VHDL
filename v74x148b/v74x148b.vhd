-------------------------------------------------------------------------------
--
-- Company : Instituto Tecnológico Superior de Teziutlán - Mecatrónica
-- Engineer: Miguel Montiel Martínez
-- 
-- Create Date:    06/08/2015 17:59:02
-- Project Name:   v74x148
-- Module Name:    v74x148.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para unsigned

entity v74x148b is
   port( 
	EI_L: in std_logic;
	I_L : in std_logic_vector(7 downto 0);
	A_L : out std_logic_vector(2 downto 0);
	EO_L, GS_L : out std_logic
	);
end v74x148b;

architecture arq1 of v74x148b is

	signal EI: std_logic;
	signal I : std_logic_vector(7 downto 0);
	signal A : std_logic_vector(2 downto 0);
	signal EO,GS:std_logic;
begin
	codif: process (EI_L, I_L, EI, EO, GS,I,A)
	variable j: integer range 7 downto 0;
	begin
 
		EI <= not EI_L;
		I <= not I_L;
		
		EO<= '1'; GS<= '0'; A<= "000";
		if(EI) = '0' then EO <= '0'; 
		else for j in 7 downto 0 loop
			if I(j) = '1' then
				GS<= '1';
				EO<= '0';
				A<= std_logic_vector(to_unsigned(j,A 'length));
				exit;
			end if;
		end loop;
		end if;

	

	A_L <= not A;
	GS_L <= not GS;
	EO_L <= not EO;
	end process;
end arq1;
