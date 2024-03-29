-- Company :
-- Engineer:
--
-- Create Date:28/09/2020
-- Project Name:ms_B
-- Module Name:ms_B_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ms_B_tb is
end ms_B_tb;


architecture Testbench of ms_B_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component ms_B
    port( --Define Puertos 
            a,b : in std_logic;
            co,S: out std_logic
        );
     end component;
    --Inputs/Outputs
    --signal ...
     signal a,b,co,S : std_logic;

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: ms_B port map (a,b,co,S );


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
    a<= '0'; b<='0';wait for 10 ns;
    a<= '0'; b<='1';wait for 10 ns;
    a<= '1'; b<='0';wait for 10 ns;
    a<= '1'; b<='1';wait for 10 ns;


    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;