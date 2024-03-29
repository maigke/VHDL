-------------------------------------------------------------------------------
--
-- Company : Instituto Tecnológico Superior de Teziutlán - Mecatrónica
-- Engineer: Miguel Montiel Martínez
-- 
-- Create Date:    06/08/2015 17:59:02
-- Project Name:   v74x148
-- Module Name:    v74x148_tb.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para signed, unsigned

entity v74x148b_tb is
end    v74x148b_tb;

architecture Testbench of v74x148b_tb is

   -- Component Declaration for the Unit Under Test (UUT)
   component v74x148b
      port( 
	EI_L: in std_logic;
	I_L : in std_logic_vector(7 downto 0);
	A_L : out std_logic_vector(2 downto 0);
	EO_L, GS_L : out std_logic
);
   end component;

	signal EI_L: std_logic;
	signal I_L : std_logic_vector(7 downto 0);
	signal A_L : std_logic_vector(2 downto 0);
	signal EO_L,GS_L:std_logic;

begin

  
   uut: v74x148b port map ( 
	EI_L => EI_L, 
	I_L => I_L, 
	A_L => A_L,
	EO_L => EO_L,
	GS_L => GS_L);
stim_proc: process
begin
 I_L <= "11111111"; EI_L <= '1'; wait for 10 ns;
 I_L <= "00000000"; EI_L <= '1'; wait for 10 ns;
 I_L <= "11111111"; EI_L <= '0'; wait for 10 ns;
 I_L <= "10000000"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11000000"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11100000"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11110000"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11111000"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11111100"; EI_L <= '0'; wait for 10 ns;
 I_L <= "11111110"; EI_L <= '0'; wait for 10 ns;
end process;
end Testbench;
