-- Company :
-- Engineer:
--
-- Create Date:28/10/2020
-- Project Name:exu3
-- Module Name:exu3_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity exu3_tb is
end exu3_tb;


architecture Testbench of exu3_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component exu3
    port( --Define Puertos 
    E: in std_logic;
    S: in std_logic_vector( 1 downto 0);
    ENABLE: in std_logic;

    D: out std_logic_vector(3 downto 0)
    );
     end component;
    --Inputs/Outputs
    --signal ...
     signal E: std_logic;
     signal S: std_logic_vector(1 downto 0);
     signal ENABLE: std_logic;
     signal D: std_logic_vector(3 downto 0);

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: exu3 port map ( E, S, ENABLE, D);


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
ENABLE <= '0';    
E<='0'; S <="00"; wait for 100 ns;
E<='0'; S <="01"; wait for 100 ns;
E<='0'; S <="10"; wait for 100 ns;
E<='0'; S <="11"; wait for 100 ns;

E<='1'; S <="00"; wait for 100 ns;
E<='1'; S <="01"; wait for 100 ns;
E<='1'; S <="10"; wait for 100 ns;
E<='1'; S <="11"; wait for 100 ns;


ENABLE <= '1';
E<='0'; S <="00"; wait for 100 ns;
E<='0'; S <="01"; wait for 100 ns;
E<='0'; S <="10"; wait for 100 ns;
E<='0'; S <="11"; wait for 100 ns;

E<='1'; S <="00"; wait for 100 ns;
E<='1'; S <="01"; wait for 100 ns;
E<='1'; S <="10"; wait for 100 ns;
E<='1'; S <="11"; wait for 100 ns;


    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;