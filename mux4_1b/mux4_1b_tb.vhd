---------------------------------------------------------------------------------
----
---- Company : ITS Teziutlan
---- Engineer: Miguel Montiel Mtz
---- 
---- Create Date:    17/07/2015 01:16:39
---- Project Name:   mux4_1b
---- Module Name:    mux4_1b_tb.vhd
---- Description:
----
---- Additional Comments:
----
---------------------------------------------------------------------------------
--
ENTITY mux4_1b_tb is
END mux4_1b_tb;
--
ARCHITECTURE muxtb OF mux4_1b_tb is
 COMPONENT mux4_1b
	PORT(
	d				: in bit_vector (3 downto 0);
	s				: in bit_vector (1 downto 0);
	y				: out bit);
 END COMPONENT;
--
  SIGNAL d: bit_vector(3 downto 0);
  SIGNAL s: bit_vector(1 downto 0);
  SIGNAL y: bit;
--
 BEGIN
   u0: mux4_1b PORT MAP (d,s,y);
	d(0) <= '1' after 0 ns, '0' after 1  ns, '1' after 2 ns, '0' after 3 ns;
        d(1) <= '1' after 0 ns, '0' after 2 ns, '1' after 4 ns, '0' after 8 ns;
        d(2) <= '1' after 0 ns, '0' after 4 ns, '1' after 8 ns, '0' after 16 ns;
 	d(3) <= '1' after 0 ns, '0' after 8 ns,'1' after 16 ns, '0' after 32 ns;
--
        s(0) <= '0' after 0 ns,'1' after 8 ns,'0' after 16 ns, '1' after  24 ns;
        s(1) <= '0' after 0 ns, '1' after 16 ns,  '0' after 32 ns;
END muxtb;
