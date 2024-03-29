-- Company :
-- Engineer:
--
-- Create Date:20/11/2020
-- Project Name:clkdiv
-- Module Name:clkdiv_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity clkdiv_tb is
end clkdiv_tb;


architecture Testbench of clkdiv_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component clkdiv
    port(
        mclk: in std_logic;
        clr: in std_logic;
        clk_8 : out std_logic
       );
     end component;
    --Inputs/Outputs
    signal clr, clk_8: std_logic;


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
     signal mclk :std_logic:='0';
    constant clock_period: time:= 20 ns;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: clkdiv port map (mclk, clr, clk_8);


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
        wait;
    end process;


--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
    wait for 100 ns;
    clr<='0';

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1
    wait for 500 ns;
    clr<='1';

    -- Test case 2


wait;
end process;
end Testbench;