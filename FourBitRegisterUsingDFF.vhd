library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourBitRegisterUsingDFF is
	port(
		data : in std_logic_vector(3 downto 0);
		clk , reset: in std_logic;
		dh : out std_logic_vector(3 downto 0)
	);

end FourBitRegisterUsingDFF;

architecture Structural of FourBitRegisterUsingDFF is
	component DFF
		port(
			d, dclk, dreset : in std_logic;
			dq, dqbar : out std_logic
		);
	end component;
begin
	
	DFFCore0 : DFF port map( dclk=>clk, dreset=>reset, d=>data(0), dq=>dh(0));
	DFFCore1 : DFF port map( dclk=>clk, dreset=>reset, d=>data(1), dq=>dh(1));
	DFFCore2 : DFF port map( dclk=>clk, dreset=>reset, d=>data(2), dq=>dh(2));
	DFFCore3 : DFF port map( dclk=>clk, dreset=>reset, d=>data(3), dq=>dh(3));

end Structural;

