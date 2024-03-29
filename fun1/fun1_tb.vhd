-- Company :
-- Engineer:
--
-- Create Date:09/08/2020
-- Project Name:fun1
-- Module Name:fun1_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity fun1_tb is
end fun1_tb;


architecture Testbench of fun1_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component fun1
            port( --Define Puertos 
            a: in std_logic;
            b: in std_logic;
            c: in std_logic;
            d: in std_logic;
            e: out std_logic
        );
     end component;
    --Inputs/Outputs
    --signal ...
     signal a,b,c,d,e : std_logic;

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: fun1 port map (a,b,c,d,e );


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
    wait for 1 ns;

    a<='0';b<='0';c<='0';d<='0';
    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1

    a<='0';b<='0';c<='0';d<='1'; wait for 10 ns;
    a<='0';b<='0';c<='1';d<='0'; wait for 10 ns;
    a<='0';b<='0';c<='1';d<='1'; wait for 10 ns;
    a<='0';b<='1';c<='0';d<='0'; wait for 10 ns;
    a<='0';b<='1';c<='0';d<='1'; wait for 10 ns;
    a<='0';b<='1';c<='1';d<='0'; wait for 10 ns;
    a<='0';b<='1';c<='1';d<='1'; wait for 10 ns;
    a<='1';b<='0';c<='0';d<='0'; wait for 10 ns;
    
    -- Test case 2
    a<='1';b<='0';c<='0';d<='1'; wait for 10 ns;
    a<='1';b<='0';c<='1';d<='0'; wait for 10 ns;
    a<='1';b<='0';c<='1';d<='1'; wait for 10 ns;
    a<='1';b<='1';c<='0';d<='0'; wait for 10 ns;
    a<='1';b<='1';c<='0';d<='1'; wait for 10 ns;
    a<='1';b<='1';c<='1';d<='0'; wait for 10 ns;
    a<='1';b<='1';c<='1';d<='1'; wait for 10 ns;
    a<='0';b<='0';c<='0';d<='0'; wait for 10 ns;
wait;
end process;
end Testbench;