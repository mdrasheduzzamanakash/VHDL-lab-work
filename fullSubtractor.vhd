
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fullSubtractor is
	port(
		a : in std_logic;
		b : in std_logic;
		bin : in std_logic;
		df : out std_logic;
		bout : out std_logic
	);
end fullSubtractor;


architecture Dataflow of fullSubtractor is
begin

	df <= (a xor b) xor bin;
	bout <= (b and bin) or ((not a) and bin) or ((not a) and b);

end Dataflow;

