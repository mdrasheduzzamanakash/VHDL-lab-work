
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FullSubtractorUsingComplements is
	port(
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		bin : in std_logic;
		df : out std_logic_vector(3 downto 0);
		bout : out std_logic
	);
end FullSubtractorUsingComplements;

architecture Structural of FullSubtractorUsingComplements is
-- component declaration 
component fuladr
		port(
				A, B, Cin : IN std_logic;
				Sum, Cout : OUT std_logic
			);
end component;
-- ending component declaration 
signal b1, b2, b3 : std_logic;



begin

	FA0 : fuladr port map (A=>a(0), B=>not(b(0)), Cin=>bin, Sum=>df(0), Cout=>b1);
	FA1 : fuladr port map (A=>a(1), B=>not(b(1)), Cin=>b1, Sum=>df(1), Cout=>b2);
	FA2 : fuladr port map (A=>a(2), B=>not(b(2)), Cin=>b2, Sum=>df(2), Cout=>b3);
	FA3 : fuladr port map (A=>a(3), B=>not(b(3)), Cin=>b3, Sum=>df(3), Cout=>bout);

end Structural;

