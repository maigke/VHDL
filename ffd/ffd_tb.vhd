-- Company :
-- Engineer:
--
-- Create Date:28/10/2020
-- Project Name:ffd
-- Module Name:ffd_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ffd_tb is
end ffd_tb;


architecture Testbench of ffd_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component ffd
    port( --Define Puertos 
    D,clk : in std_logic;
    Q: out std_logic
        );
     end component;
    --Inputs/Outputs
    --signal ...
     signal D,Q: std_logic;

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal clk :std_logic:='1';
    constant clock_period: time:= 100 ms;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: ffd port map (D,clk,Q );


-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
    clock_process : process
    begin
        while (clock_on) loop
            clk <= '1';
            wait for clock_period/2;
            clk <= '0';
            wait for clock_period/2;
        end loop;
        wait;
    end process;
--stop-time=500ms

--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
 D <= '1';   wait for 150 ms;
 D <= '0';   wait for 200 ms;
 D <= '1';   wait for 150 ms;

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;