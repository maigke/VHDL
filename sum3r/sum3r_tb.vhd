-------------------------------------------------------------------------------
--
-- Company : Universidad Miguel Hernandez
-- Engineer: anahi
-- 
-- Create Date:    02/11/2020 18:19:31
-- Project Name:   sum3r
-- Module Name:    sum3r_tb.vhd
-- Description:
--
-- Additional Comments:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;  -- Para std_logic
use IEEE.numeric_std.all;     -- Para signed, unsigned

entity sum3r_tb is
end    sum3r_tb;

architecture Testbench of sum3r_tb is

   -- Component Declaration for the Unit Under Test (UUT)
   component sum3r
      port(
      A,B: in std_logic_vector(2 downto 0 );
      R_nS: in std_logic;
      M: out std_logic_vector(3 downto 0)
      );
   end component;

   -- Select an architecture if needed (default is last one analyzed).
   --for uut: sum3r use entity WORK.sum3r(arq1);

   -- Inputs/Outputs
   -- signal ...

signal A,B: std_logic_vector(2 downto 0);
signal R_nS: std_logic;
signal M: std_logic_vector(3 downto 0);
   -- Clock (uncomment if needed)
   -- Sustituir <clock> por el nombre de puerto apropiado
--   signal   <clock> : std_logic := '0';
--   constant clock_period : time := 50 ns;
--   signal   clock_on : boolean := true;

begin

   -- Instantiate the Unit Under Test (UUT)
   uut: sum3r port map (A,B,R_nS,M);

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
R_nS<='0'; 
A<="000"; B<="000";  wait for 100 ns;

A<="011"; B<="111";  wait for 100 ns;

A<="111"; B<="000";  wait for 100 ns;
R_nS<='1'; 
A<="011"; B<="111";  wait for 100 ns;
A<="001"; B<="101";  wait for 100 ns;
A<="111"; B<="011";  wait for 100 ns;
A<="110"; B<="010";  wait for 100 ns;


   ---------------------------------------------------------
   -- insert stimulus here
   ---------------------------------------------------------

   -- Test case 1
   -- ... Asignaciones a seniales de entrada ...
  -- wait for 100 ns;
   -- assert (<condition>) report "Error case 1" severity error;

   -- Test case 2
   -- ... Asignaciones a seniales de entrada ...
 --  wait for 100 ns;
   -- assert (<condition>) report "Error case 2" severity error;

   -- Stop clock
--   clock_on <= false;
   -- Wait forever
   wait;

end process;

end Testbench;
