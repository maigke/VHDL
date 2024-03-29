-- Company :
-- Engineer:
--
-- Create Date:25/10/2020
-- Project Name:ev_u3
-- Module Name:ev_u3_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity ev_u3_tb is
end ev_u3_tb;


architecture Testbench of ev_u3_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component ev_u3
    port( --Define Puertos 
    A,B: in std_logic_vector(2 downto 0);
    d: out std_logic_vector(7 downto 0)
    );
     end component;
    --Inputs/Outputs
    --signal ...
     signal A,B: std_logic_vector( 2 downto 0);
     signal d: std_logic_vector( 7 downto 0);

    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: ev_u3 port map (A,B,d);


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
    A<= "000";B<="111"; wait for 100 ns;
    A<= "000";B<="001"; wait for 100 ns;
    A<= "001";B<="101"; wait for 100 ns;
    A<= "001";B<="000"; wait for 100 ns;
    A<= "001";B<="100"; wait for 100 ns;
    A<= "010";B<="001"; wait for 100 ns;

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;