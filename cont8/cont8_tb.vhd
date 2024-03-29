-- Company :
-- Engineer:
--
-- Create Date:17/11/2020
-- Project Name:cont8
-- Module Name:cont8_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont8_tb is
end cont8_tb;


architecture Testbench of cont8_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component cont8
    port(
        mclk: in std_logic;
        clr: in std_logic;
        q: out std_logic_vector(7 downto 0)
       );
     end component;
    --Inputs/Outputs
    signal clr: std_logic;
    signal q: std_logic_vector(7 downto 0);


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal mclk :std_logic:='0';
    constant clock_period: time:= 50 ns;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: cont8 port map (mclk,clr,q);


-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
    clock_process : process
    begin
        while (clock_on) loop
            mclk <= '0';
            wait for clock_period/2;
            mclk <= '1';
            wait for clock_period/2;
        end loop;
        --wait;
    end process;


--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
clr <='0';    wait for 800 ns;
clr <='1';
wait for  1 ms;
clr <= '0';
    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;