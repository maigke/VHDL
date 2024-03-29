-- Company :
-- Engineer:
--
-- Create Date:06/12/2020
-- Project Name:contador
-- Module Name:contador
-- Description:
--
-- Additional Comments:
--


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;


entity contador is
     port( --Define Puertos 
            clk,clr:in std_logic;
            num: out std_logic_vector(6 downto 0);
            u,d,c,nc: out std_logic
    );
end contador;


architecture arq1 of contador is

    signal w1,w2,w3,w4: std_logic;
    signal r1,r6: std_logic_vector(7 downto 0);
    signal r2,r3,r4,r5,r7: std_logic_vector(3 downto 0);
    signal sa,sb,sc,sd,se,sf,sg: std_logic;
    signal m0: std_logic_vector(1 downto 0);
    signal m1: std_logic_vector(2 downto 0);
    component clk_div24 is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            clk_24 : out std_logic
           );
    end component;

    component cont8 is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            q: out std_logic_vector(7 downto 0)
           );
    end component;

    component con_bin_bcd is
        port(
            num: in std_logic_vector(7 downto 0);
            cen: out std_logic_vector(3 downto 0);  
            dec: out std_logic_vector(3 downto 0);
            uni: out std_logic_vector(3 downto 0)
       );
    end component;

    component mux4_1_4bits is
        port( --Define Puertos 
        A,B,C,D: in std_logic_vector(3 downto 0);
        S: in std_logic_vector(1 downto 0);
        Z: out std_logic_vector(3 downto 0)
);
    end component;

    component bcd2ssa is
        port( --Define Puertos 
        A: in std_logic_vector(3 downto 0);
        BI_L : in std_logic;
        nA_C : in std_logic;
        d: out std_logic_vector(7 downto 0)  
  );
    end component;

    component clk_div8 is
        port(
            mclk: in std_logic;
            clr: in std_logic;
            clk_8 : out std_logic
           );
    end component;

    component cont2b is
        port( --Define Puertos 
        clk: in std_logic;
        q:out std_logic_vector(1 downto 0)
);
    end component;

    component deco2_4en is
        port( --Define Puertos 
        -- X(2) - E
        -- X(1) - B
        -- X(0) - A
               X: in std_logic_vector( 2 downto 0);
               D: out std_logic_vector(3 downto 0)
       );
    end component;

begin

    u0: clk_div24 port map(clk,'1',w1);
    u1: cont8 port map(w1,clr,r1);
    u2: con_bin_bcd port map(r1,r4,r3,r2);
    u3: mux4_1_4bits port map(r2,r3,r4,X"0",m0,r5);
    u4: bcd2ssa port map(r5,'0','0',r6);
    u5: clk_div8 port map(clk,'1',w4);
    u6: cont2b port map(w4,m0);
    u7: deco2_4en port map(m1,r7);
    w3 <=m0(1); w2 <= m0(0);
    m1<= '1' & w3 & w2;
    sa<=r6(6);sb<=r6(5);sc<=r6(4);sd<=r6(3);se<=r6(2);
    sf<=r6(1);sg<=r6(0);
    num <= sg & sf & se & sd & sc & sb & sa;
    u <= r7(0);
    d <= r7(1);
    c <= r7(2);
    nc <=r7(3);
end arq1;