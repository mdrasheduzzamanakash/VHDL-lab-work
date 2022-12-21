--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:54:28 12/13/2022
-- Design Name:   
-- Module Name:   D:/dsd lab/lab-01/TflipflopTest.vhd
-- Project Name:  lab-01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Tflipflop
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
 
ENTITY TflipflopTest IS
END TflipflopTest;
 
ARCHITECTURE behavior OF TflipflopTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Tflipflop
    PORT(
         tin : IN  std_logic;
         tclk : IN  std_logic;
         treset : IN  std_logic;
         tq : IN  std_logic;
         tqbar : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal tin : std_logic := '0';
   signal tclk : std_logic := '0';
   signal treset : std_logic := '0';
   signal tq : std_logic := '0';
   signal tqbar : std_logic := '0';

   -- Clock period definitions
   constant tclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tflipflop PORT MAP (
          tin => tin,
          tclk => tclk,
          treset => treset,
          tq => tq,
          tqbar => tqbar
        );

   -- Clock process definitions
   tclk_process :process
   begin
		tclk <= '0';
		wait for tclk_period/2;
		tclk <= '1';
		wait for tclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for tclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
