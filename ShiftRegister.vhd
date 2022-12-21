library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister is
	port(
		i, clk, reset : in std_logic;
		q : inout std_logic_vector(3 downto 0)
	);
end ShiftRegister;

architecture Behavioral of ShiftRegister is
	component DFF
		port(
			d, dclk, dreset : in std_logic;
			dq, dqbar : out std_logic
		);
	end component;
begin
	DFFCore0 : DFF port map( d=>i,    dclk=>clk, dreset=>reset, dq=>q(0));
	DFFCore1 : DFF port map( d=>q(0), dclk=>clk, dreset=>reset, dq=>q(1));
	DFFCore2 : DFF port map( d=>q(1), dclk=>clk, dreset=>reset, dq=>q(2));
	DFFCore3 : DFF port map( d=>q(2), dclk=>clk, dreset=>reset, dq=>q(3));
end Behavioral;

