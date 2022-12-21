library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TflipflopFallingEdge is
	port(
		T, clk : in std_logic;
		Q : out std_logic
	);
end TflipflopFallingEdge;

architecture Behavioral of TflipflopFallingEdge is
	signal Qt : std_logic := '0';
begin

	process(T, clk)
	begin
		if rising_edge(clk) and T = '1' then 
			Qt <= not Qt;
		end if;
	end process;
	
	Q <= Qt;

end Behavioral;

