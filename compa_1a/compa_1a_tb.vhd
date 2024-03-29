-- Company :
-- Engineer:
--
-- Create Date:02/10/2020
-- Project Name:compa_1a
-- Module Name:compa_1a_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity compa_1a_tb is
end compa_1a_tb;


architecture Testbench of compa_1a_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component compa_1a
    port( --Define Puertos 
            a,b : in std_logic;
            x,y,z: out std_logic 
        );
     end component;
    --Inputs/Outputs
    --signal ...
     signal a,b,x,y,z: std_logic;

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: compa_1a port map ( a,b,x,y,z);


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
    a <= '0'; b <= '0'; wait for 100 ns;
    a <= '0'; b <= '1'; wait for 100 ns;
    a <= '1'; b <= '0'; wait for 100 ns;
    a <= '1'; b <= '1'; wait for 100 ns;

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;