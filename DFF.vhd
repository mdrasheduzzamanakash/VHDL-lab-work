library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
	port(
		d, dclk, dreset : in std_logic;
		dq, dqbar : out std_logic
	);
end DFF;

architecture Structural of DFF is
	component SR
		port(
			s, r, reset, clk : in std_logic;
			q, qbar : out std_logic
		);
	end component;

begin
	SRCore : SR port map( s=>d, r=>not(d), clk=>dclk, reset=>dreset, q=>dq, qbar=>dqbar );
end Structural;

