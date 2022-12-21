library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is 
	port(
		A, B : IN std_logic;
		Sum, Carry : OUT std_logic
	); 
end half_adder;


-- steps for implemeting architecture of an entity ( imp. for VIVA)
-- 			1. Creating entity
--				2. Truth table making 
--	 			3. K-map making 
--				4. S = AB` + A`B or S = A ^ B
--				5. C = AB

Architecture df of half_adder is  
Begin 
	process(A, B)
	begin
		Sum <= A xor B;
		carry <= A and B;
	end process;
end df;



-- Report ---
-- What is VHDL ? 
-- Different architecture of VHDL
-- Difference between Verilog and VHDL
-- Design a full adder
	-- 0. Architecture pattern of full adder
	-- 	1. Creating entity
	--		2. Truth table making 
	--	 	3. K-map making 
	--		4. S = AB` + A`B or S = A ^ B
	--		5. C = AB
-- 1. Dataflow
-- 2. Behavioral 
