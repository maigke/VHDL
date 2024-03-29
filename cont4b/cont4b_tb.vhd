-- Company :
-- Engineer:
--
-- Create Date:19/11/2020
-- Project Name:cont4b
-- Module Name:cont4b_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4b_tb is
end cont4b_tb;


architecture Testbench of cont4b_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component cont4b
    port( --Define Puertos 
    clr,clk: in std_logic;
    q: out std_logic_vector(7 downto 0)
);
     end component;
    --Inputs/Outputs
    signal clr: std_logic;
    signal q: std_logic_vector(7 downto 0);


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal clk :std_logic:='0';
    constant clock_period: time:= 50 ns;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: cont4b port map (clr,clk,q );


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
stim_proc: processhttps://mail.google.com/mail/u/0/#inbox
begin
    --hold reset state for 100 ns
    wait for 100 ns;
    clr <='0';
    wait for 300 ns;
    clr <='1';
    wait for 1500 ns;
    clr <='0';
    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1


    -- Test case 2


wait;
end process;
end Testbench;