
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity evenCounter is
	port(
		clk : in std_logic;
		Q : inout std_logic_vector(2 downto 0)
	);
end evenCounter;

architecture Structural of evenCounter is
   component TflipflopFallingEdge
		port(
			T, clk : in std_logic;
			Q : out std_logic
		);
	end component;
begin
	tff0 : TflipflopFallingEdge port map( T=>'0', clk=>clk, Q=>Q(0));
	tff1 : TflipflopFallingEdge port map( T=>'1', clk=>clk, Q=>Q(1));
	tff2 : TflipflopFallingEdge port map( T=>'1', clk=>Q(1), Q=>Q(2));
end Structural;

