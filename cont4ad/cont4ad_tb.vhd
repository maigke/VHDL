-- Company :
-- Engineer:
--
-- Create Date:18/11/2020
-- Project Nam
-- Module Name:cont4ad_tb
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity cont4ad_tb is
end cont4ad_tb;


architecture Testbench of cont4ad_tb is


--Al nombre debes quitarle _tb para que no indique un warning
    component cont4ad
    port( --Define Puertos 
    clk: in std_logic;
    D_nU: in std_logic;
    q: out std_logic_vector(3 downto 0)    
);
     end component;
    --Inputs/Outputs
    signal D_nU: std_logic;
    signal q: std_logic_vector(3 downto 0);


    --Clock (descomentar si es necesario)
    --sustituir <clock> por el nombre del puerto apropiado
    signal clk :std_logic:='0';
    constant clock_period: time:= 20 us;
    signal clock_on: boolean := true;


begin
    --Instancia la UUT (Unidad bajo prueba)
    --Recuerda quitar del nombre de la UUT el _tb
    uut: cont4ad port map (clk,D_nU,q);


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


--Stimulus process
stim_proc: process
begin
    --hold reset state for 100 ns
    wait for 100 ns;


    --------------------------------
    -- inserta los estimulos aqui asincronos
    --------------------------------


    -- Test case 1
D_nU <= '0'; wait for 400 us;
D_nU <= '1'; wait for 400 us;

    -- Test case 2


wait;
end process;
end Testbench;