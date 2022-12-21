
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DoubleJK is
	port(
		jd, kd, resetd, clkd : in std_logic;
		qd, qbard : out std_logic
	);
end DoubleJK;

architecture Structural of DoubleJK is
	component JK 
		port(
			j, k, reset, clk : in std_logic;
			q, qbar : out std_logic
		);
	end component;
	signal q1, q2 : std_logic;
begin
	
	DJK0 : JK port map (j=>jd, k=>kd, reset=>resetd, clk=>clkd, q=>q1, qbar=>q2);
	DJK1 : JK port map (j=>q1, k=>q2, reset=>resetd, clk=>clkd, q=>qd, qbar=>qbard);

end Structural;

