library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tflipflop is
	port(
		tin, tclk , treset: in std_logic;
		tq, tqbar : out std_logic
	);
end Tflipflop;

architecture Behavioral of Tflipflop is
	
	component JK
		port(
			j, k, reset, clk : in std_logic;
			q, qbar : out std_logic
		);
	end component;
	
	
begin

	JK0 : JK port map(j=>tin, k=>tin, q=>tq, qbar=>tqbar, clk=>tclk,reset=>treset);

end Behavioral;

