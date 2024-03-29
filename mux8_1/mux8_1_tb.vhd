-- Company :
-- Engineer:
--
-- Create Date:15/10/2020
-- Project Name:mux8_1
-- Module Name:mux8_1_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux8_1_tb is
end mux8_1_tb;


architecture Testbench of mux8_1_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component mux8_1
    port( --Define Puertos 
    I0,I1,I2,I3, I4,I5,I6,I7: in std_logic;
    a,b,c: in std_logic;
    Y: out std_logic
); 
     end component;
    --Inputs/Outputs
    --signal ...
signal I0,I1,I2,I3, I4,I5,I6,I7: std_logic;
signal a,b,c: std_logic;
signal Y: std_logic;
    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: mux8_1 port map (I0,I1,I2,I3,I4,I5,I6,I7,a,b,c,Y );


-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
    --clock_process : process
    --begin
        --while (clock_on) loop
            --mclk <= '0';
            --wait for clock_period/2;
            --mclk <= '1';
            --wait for clock_period/2;
        --end loop;
        --wait;
    --end process


--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
 a<='0';b<='0';c<='0';
 I7<='0';I6<='0';I5<='0';I4<='0';
 I3<='0';I2<='0';I1<='0';I0<='1';
 wait for 10 ns;
 I7<='0';I6<='0';I5<='0';I4<='0';
 I3<='0';I2<='0';I1<='1';I0<='0';
 wait for 10 ns;
 I7<='0';I6<='0';I5<='0';I4<='0';
 I3<='0';I2<='1';I1<='0';I0<='0';
 wait for 10 ns;
 I7<='0';I6<='0';I5<='0';I4<='0';
 I3<='1';I2<='0';I1<='0';I0<='0';
 wait for 10 ns;
 I7<='0';I6<='0';I5<='0';I4<='1';
 I3<='0';I2<='0';I1<='0';I0<='0';
 wait for 10 ns;
 I7<='0';I6<='0';I5<='1';I4<='0';
 I3<='0';I2<='0';I1<='0';I0<='0';
 wait for 10 ns;
 I7<='0';I6<='1';I5<='0';I4<='0';
 I3<='0';I2<='0';I1<='0';I0<='0';
 wait for 10 ns;
 I7<='1';I6<='0';I5<='0';I4<='0';
 I3<='0';I2<='0';I1<='0';I0<='0';
 wait for 10 ns;


    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1

    a<='0';b<='0';c<='1';
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='1';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='1';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='1';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='1';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='1';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='1';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='1';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='1';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    -- Test case 2
    a<='0';b<='1';c<='0';
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='1';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='1';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='1';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='1';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='1';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='1';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='1';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='1';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;



    a<='0';b<='1';c<='1';
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='1';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='1';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='1';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='0';
    I3<='1';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='0';I4<='1';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='0';I5<='1';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='0';I6<='1';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
    I7<='1';I6<='0';I5<='0';I4<='0';
    I3<='0';I2<='0';I1<='0';I0<='0';
    wait for 10 ns;
wait;
end process;
end Testbench;