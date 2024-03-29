-- Company :
-- Engineer:
--
-- Create Date:15/10/2020
-- Project Name:mux8b_1
-- Module Name:mux8b_1_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity mux8b_1_tb is
end mux8b_1_tb;


architecture Testbench of mux8b_1_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component mux8b_1
    port( --Define Puertos 
    I: in std_logic_vector(7 downto 0);
    S: in std_logic_vector(2 downto 0);
    Y: out std_logic
);
     end component;
    --Inputs/Outputs
    --signal ...
signal I: std_logic_vector(7 downto 0);
signal S: std_logic_vector(2 downto 0);
signal Y: std_logic;
    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    -- signal <clock> :std_logic:='0';
    --constant clock_period: time:= 20 ns;
    --signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: mux8b_1 port map ( I,S,Y);


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
    S<="000";
    I<="00000000";
    wait for 10 ns;
    
    I<="00000010";
    wait for 10 ns;
    
    I<="00000100";
    wait for 10 ns;
    
    I<="00001000";
    wait for 10 ns;
    
    I<="00010000";
    wait for 10 ns;
    
    I<="00100000";
    wait for 10 ns;
    
    I<="01000000";
    wait for 10 ns;
    I<="10000000";
    wait for 10 ns;



    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1
    S<="001";    I<="00000000";    wait for 10 ns;
                 I<="00000010";    wait for 10 ns;
                 I<="00000100";    wait for 10 ns;
                 I<="00001000";    wait for 10 ns;
                 I<="00010000";    wait for 10 ns;
                 I<="00100000";    wait for 10 ns;
                 I<="01000000";    wait for 10 ns;
                 I<="10000000";    wait for 10 ns;

    -- Test case 2
    S<="010";    I<=X"00";    wait for 10 ns;
                 I<=X"02";    wait for 10 ns;
                 I<=X"04";    wait for 10 ns;
                 I<=X"08";    wait for 10 ns;
                 I<=X"10";    wait for 10 ns;
                 I<=X"20";    wait for 10 ns;
                 I<=X"40";    wait for 10 ns;
                 I<=X"80";    wait for 10 ns;
    -- Test case 3
    S<="011";    I<=X"00";    wait for 10 ns;
                 I<=X"02";    wait for 10 ns;
                 I<=X"04";    wait for 10 ns;
                 I<=X"08";    wait for 10 ns;
                 I<=X"10";    wait for 10 ns;
                 I<=X"20";    wait for 10 ns;
                 I<=X"40";    wait for 10 ns;
                 I<=X"80";    wait for 10 ns;

    -- Test case 4
    S<="100";    I<=X"00";    wait for 10 ns;
                 I<=X"02";    wait for 10 ns;
                 I<=X"04";    wait for 10 ns;
                 I<=X"08";    wait for 10 ns;
                 I<=X"10";    wait for 10 ns;
                 I<=X"20";    wait for 10 ns;
                 I<=X"40";    wait for 10 ns;
                 I<=X"80";    wait for 10 ns;
wait;
end process;
end Testbench;