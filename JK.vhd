library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity JK is
	port(
		j, k, reset, clk : in std_logic;
		q, qbar : out std_logic
	);
end JK;




architecture mixed of JK is 
	signal qt, qbart : std_logic;
begin
	
	-- behavioral
	process(reset, j, k, clk)
	begin
		if reset = '1' then 
			qt <= '0';
		elsif rising_edge(clk) then
			if j = '0' and k = '0' then 
				null;
			elsif j = '1' and k = '0' then 
				qt <= '1';
			elsif j = '0' and k = '1' then 
				qt <= '0';
			else 
				qt <= qbart;
			end if;
		end if;
	end process;
	
	qbart <= not(qt);
	q <= qt;
	qbar <= qbart;
end mixed;
