
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR is
	port(
		s, r, reset, clk : in std_logic;
		q, qbar : out std_logic
	);
end SR;

architecture mixed of SR is
	--signal qt, qbart : std_logic;
	signal qt : std_logic := '0';
	signal qbart : std_logic := '1';
begin

-- behavioral
	process(reset, s, r, clk)
	begin
		if reset = '1' then 
			qt <= '0';
		elsif rising_edge(clk) then
			if s = '0' and r = '0' then 
				null; -- memory
			elsif s = '0' and r = '1' then 
				qt <= '0';
			elsif s = '1' and r = '0' then 
				qt <= '1';
			else
				null; -- forbidden
			end if;
		end if;
	end process;

-- dataflow
	qbart <= not(qt);
	q <= qt;
	qbar <= qbart;
end mixed;

