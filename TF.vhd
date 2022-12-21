
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TF is
	port(
		tin, tclk, treset : in std_logic;
		tq, tqbar : out std_logic
	);
end TF;

architecture Behavioral of TF is
	component JK 
		port(
			j, k, reset, clk : in std_logic;
			q, qbar : out std_logic
		);
	end component;

begin
	JKCore : JK port map(j=>tin, k=>tin, reset=>treset, clk=>tclk, q=>tq, qbar=>tqbar);
end Behavioral;

