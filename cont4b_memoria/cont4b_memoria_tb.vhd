-- Company :
-- Engineer:
--
-- Create Date:23/11/2020
-- Project Name:cont4b_memoria
-- Module Name:cont4b_memoria_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4b_memoria_tb is
end cont4b_memoria_tb;


architecture Testbench of cont4b_memoria_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component cont4b_memoria
    port( --Define Puertos 
    P: in std_logic_vector( 3 downto 0);
    clr,enp, load, clk: in std_logic;
    Q: out std_logic_vector(3 downto 0)
);
     end component;
    --Inputs/Outputs
    signal P,Q:std_logic_vector(3 downto 0);
    signal clr,enp,load: std_logic;


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal clk :std_logic:='0';
    constant clock_period: time:= 20 ns;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: cont4b_memoria port map (P, clr,enp,load,clk,Q);


-- Clock process (uncomment if needed)
-- Descomentar en caso de requerir senial de reloj
-- Sustituir <clock> por el nombre de puerto apropiado
    clock_process : process
    begin
        while (clock_on) loop
            clk <= '0';
            wait for clock_period/2;
            clk <= '1';
            wait for clock_period/2;
        end loop;
        wait;
    end process;


--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
    wait for 100 ns;
P<="0110"; clr<='1';enp<='1';load<='1';wait for 500 ns;

    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1
    P<="0110"; clr<='1';enp<='1';load<='0';wait for 500 ns;
    P<="0110"; clr<='1';enp<='1';load<='1';wait for 500 ns;
    P<="0110"; clr<='1';enp<='0';load<='0';wait for 500 ns;
    P<="0110"; clr<='1';enp<='1';load<='1';wait for 500 ns;
    P<="0110"; clr<='1';enp<='0';load<='1';wait for 500 ns;
    P<="0110"; clr<='1';enp<='1';load<='1';wait for 500 ns;
    -- Test case 2



wait;
end process;
end Testbench;