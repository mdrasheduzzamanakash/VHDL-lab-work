
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fuladr is
port(
		A, B, Cin : IN std_logic;
		Sum, Cout : OUT std_logic
	); 
end fuladr;



Architecture bhavioralTest of fuladr is  
Begin 
		Sum <= A xor B xor Cin;
		Cout <= (A and B) or (B and Cin) or (Cin and A);
end bhavioralTest;

