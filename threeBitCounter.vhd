library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity threeBitCounter is
	port(
		clk : in std_logic;
		Q0, Q1, Q2 : inout std_logic
	);
end threeBitCounter;

architecture Structural of threeBitCounter is
	component TflipflopFallingEdge
		port(
			T, clk : in std_logic;
			Q : out std_logic
		);
	end component;
begin
	tff0 : TflipflopFallingEdge port map( T=>'1', clk=>clk, Q=>Q0);
	tff1 : TflipflopFallingEdge port map( T=>'1', clk=>Q0, Q=>Q1);
	tff2 : TflipflopFallingEdge port map( T=>'1', clk=>Q1, Q=>Q2);
end Structural;

