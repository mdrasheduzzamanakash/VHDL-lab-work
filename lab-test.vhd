----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:33 12/01/2022 
-- Design Name: 
-- Module Name:    lab-test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity labtest is
port(
		A, B, Cin : IN std_logic;
		Sum, Cout : OUT std_logic
	);
end labtest;

architecture Behavioral of labtest is
begin

		Sum <= A xor B xor Cin;
		Cout <= (A and B) or (B and Cin) or (Cin and A);
end Behavioral;

