-- Company :
-- Engineer:
--
-- Create Date:14/10/2020
-- Project Name:comp_4b
-- Module Name:comp_4b_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity comp_4b_tb is
end comp_4b_tb;


architecture Testbench of comp_4b_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component comp_4b
    port( --Define Puertos 
    A,B: in std_logic_vector(3 downto 0);
    x,y,z: out std_logic
    );
     end component;
    --Inputs/Outputs
    --signal ...
signal A,B: std_logic_vector(3 downto 0);
signal x,y,z: std_logic;

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: comp_4b port map (A,B,x,y,z);


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
A<=X"0"; B<=X"0";wait for 100 ns;
A<=X"F"; B<=X"1";wait for 100 ns;
A<=X"C"; B<=X"A";wait for 100 ns;
A<=X"0"; B<=X"3";wait for 100 ns;
A<=X"5"; B<=X"4";wait for 100 ns;
A<=X"1"; B<=X"1";wait for 100 ns;
A<=X"E"; B<=X"F";wait for 100 ns;
A<=X"F"; B<=X"E";wait for 100 ns;
A<=X"0"; B<=X"F";wait for 100 ns;
A<=X"1"; B<=X"1";wait for 100 ns;
A<=X"7"; B<=X"1";wait for 100 ns;
A<=X"9"; B<=X"9";wait for 100 ns;

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;