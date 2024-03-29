-- Company :
-- Engineer:
--
-- Create Date:19/11/2020
-- Project Name:cont2b
-- Module Name:cont2b_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont2b_tb is
end cont2b_tb;


architecture Testbench of cont2b_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component cont2b
    port( --Define Puertos 
        clk: in std_logic;
        q:out std_logic_vector(1 downto 0)
    );
     end component;
    --Inputs/Outputs
    signal q: std_logic_vector( 1 downto 0);


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal clk :std_logic:='0';
    constant clock_period: time:= 50 ns;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: cont2b port map ( clk,q);


-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
    clock_process: process
    begin
        while (clock_on) loop
            clk <= '0';
            wait for clock_period/2;
            clk <= '1';
            wait for clock_period/2;
        end loop;
        --wait;
    end process;
--stop-time= 400ns

--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
    wait for 100 ns;


    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;