-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: miguel
-- 
-- Create Date:    19/09/2020 10:34:57
-- Project Name:   and_2
-- Module Name:    and_2_tb.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para signed, unsigned

entity and_2_tb is
end    and_2_tb;

architecture Testbench of and_2_tb is

   -- Component Declaration for the Unit Under Test (UUT)
   component and_2
   port( 
		a : in std_logic;
		b : in std_logic;
		c : out std_logic 
	);
   end component;

   -- Select an architecture if needed (default is last one analyzed).
   --for uut: and_2 use entity WORK.and_2(arq1);

   -- Inputs/Outputs
   -- signal ...
signal a,b,c: std_logic;
   -- Clock (uncomment if needed)
   -- Sustituir <clock> por el nombre de puerto apropiado
--   signal   <clock> : std_logic := '0';
--   constant clock_period : time := 50 ns;
--   signal   clock_on : boolean := true;

begin

   -- Instantiate the Unit Under Test (UUT)
   uut: and_2 port map ( a,b,c);

-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
--clock_process : process
--begin
--   while (clock_on) loop
--      <clock> <= '0';
--      wait for clock_period/2;
--      <clock> <= '1';
--      wait for clock_period/2;
--   end loop;
--   --assert (false) report ("Finished") severity error;
--   -- Wait forever
--   wait;
-- end process;

-- Stimulus process
stim_proc: process
begin
   -- hold reset state for 100 ns
a <= '0'; b <= '0'; wait for 1 ms;
a <= '1'; b <= '0'; wait for 1 ms;
a <= '0'; b <= '1'; wait for 1 ms;
a <= '1'; b <= '1'; wait for 1 ms;
a <= '0'; b <= '0'; wait for 1 ms;
a <= '1'; b <= '0'; wait for 1 ms;
a <= '0'; b <= '1'; wait for 1 ms;
a <= '1'; b <= '1'; wait for 1 ms;
   ---------------------------------------------------------
   -- insert stimulus here
   ---------------------------------------------------------

   -- Test case 1
   -- ... Asignaciones a seniales de entrada ...
   wait for 100 ns;
   -- assert (<condition>) report "Error case 1" severity error;

   -- Test case 2
   -- ... Asignaciones a seniales de entrada ...
   wait for 100 ns;
   -- assert (<condition>) report "Error case 2" severity error;

   -- Stop clock
--   clock_on <= false;
   -- Wait forever
   wait;

end process;

end Testbench;
