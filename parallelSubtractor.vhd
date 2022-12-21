
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity parallelSubtractor is
	port(
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		bin : in std_logic;
		df : out std_logic_vector(3 downto 0);
		bout : out std_logic
	);
end parallelSubtractor;





architecture Structural of parallelSubtractor is
-- component declaration 
component fullSubtractor
	port(
		a : in std_logic;
		b : in std_logic;
		bin : in std_logic;
		df : out std_logic;
		bout : out std_logic
	);
end component;
-- ending component declaration 
signal b1, b2, b3 : std_logic;


begin
	FS0 : fullSubtractor port map (a=>a(0), b=>b(0), bin=>bin, df=>df(0),bout=>b1);
	FS1 : fullSubtractor port map (a=>a(1), b=>b(1), bin=>b1, df=>df(1),bout=>b2);
	FS2 : fullSubtractor port map (a=>a(2), b=>b(2), bin=>b2, df=>df(2),bout=>b3);
	FS3 : fullSubtractor port map (a=>a(3), b=>b(3), bin=>b3, df=>df(3),bout=>bout);
end Structural;

