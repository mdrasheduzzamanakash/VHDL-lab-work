--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:44:52 12/01/2022
-- Design Name:   
-- Module Name:   D:/dsd lab/lab-01/fulladdertestbench.vhd
-- Project Name:  lab-01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladdertest
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fulladdertestbench IS
END fulladdertestbench;
 
ARCHITECTURE behavior OF fulladdertestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladdertest
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladdertest PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );   -- Stimulus process
   stim_proc: process
   begin		
		A <= '0'; B <= '0'; Cin <= '1';
      wait for 100 ns;
		A <= '0'; B <= '0'; Cin <= '0';
      wait for 100 ns;
		A <= '0'; B <= '1'; Cin <= '0';
      wait for 100 ns;
		A <= '0'; B <= '1'; Cin <= '1';
      wait for 100 ns;
		A <= '1'; B <= '0'; Cin <= '0';
      wait for 100 ns;
		A <= '1'; B <= '0'; Cin <= '1';
      wait for 100 ns;
		A <= '1'; B <= '1'; Cin <= '0';
      wait for 100 ns;
		A <= '1'; B <= '1'; Cin <= '1';
      wait for 100 ns;
      wait;
   end process;

END;
