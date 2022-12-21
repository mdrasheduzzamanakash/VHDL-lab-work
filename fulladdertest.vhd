----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:18 12/01/2022 
-- Design Name: 
-- Module Name:    fulladdertest - Behavioral 
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

entity fulladdertest is
	port(
		a, b, cin : IN std_logic;
		s, cout : OUT std_logic
	);
end fulladdertest;

architecture Behavioral of fulladdertest is

begin
	s <= (a xor b xor cin);
	cout <= (a and b) or (b and cin) or (cin and a);
end Behavioral;

