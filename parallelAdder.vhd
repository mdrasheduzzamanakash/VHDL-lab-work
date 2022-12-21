library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity parallel_adder is 
	port(
		A, B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;
		Sum : OUT std_logic_vector(3 downto 0);
		Cout: OUT std_logic
	);
end parallel_adder;

architecture stuctural of parallel_adder is 
	-- Task 1: Component Declaration
	component fuladr
		port(
				A, B, Cin : IN std_logic;
				Sum, Cout : OUT std_logic
			);
	end component;
	
	-- Task 2: Signal Declaration / Internal Connection
	signal c1, c2, c3 : std_logic;
	
begin
	-- Task 3: Port Mapping left(FA.. full adder) -- right(PA.. parallel adder)
	FA0: fuladr port map(A=>A(0), B=>B(0), Cin=>Cin, Sum=>Sum(0), Cout=>c1);
	FA1: fuladr port map(A=>A(1), B=>B(1), Cin=>c1, Sum=>Sum(1), Cout=>c2);
	FA2: fuladr port map(A=>A(2), B=>B(2), Cin=>c2, Sum=>Sum(2), Cout=>c3);
	FA3: fuladr port map(A=>A(3), B=>B(3), Cin=>c3, Sum=>Sum(3), Cout=>Cout);
end stuctural;

