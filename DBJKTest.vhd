--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:24 12/07/2022
-- Design Name:   
-- Module Name:   D:/dsd lab/lab-01/DBJKTest.vhd
-- Project Name:  lab-01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DoubleJK
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
 
ENTITY DBJKTest IS
END DBJKTest;
 
ARCHITECTURE behavior OF DBJKTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DoubleJK
    PORT(
         jd : IN  std_logic;
         kd : IN  std_logic;
         resetd : IN  std_logic;
         clkd : IN  std_logic;
         qd : OUT  std_logic;
         qbard : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal jd : std_logic := '0';
   signal kd : std_logic := '0';
   signal resetd : std_logic := '0';
   signal clkd : std_logic := '0';

 	--Outputs
   signal qd : std_logic;
   signal qbard : std_logic;

   -- Clock period definitions
   constant clkd_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DoubleJK PORT MAP (
          jd => jd,
          kd => kd,
          resetd => resetd,
          clkd => clkd,
          qd => qd,
          qbard => qbard
        );

   -- Clock process definitions
   clkd_process :process
   begin
		clkd <= '0';
		wait for clkd_period/2;
		clkd <= '1';
		wait for clkd_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      jd <= '0';
		kd <= '0';
      wait for 150 ns;	
		resetd <= '0';
		
		jd <= '0';
		kd <= '1';
      wait for 150 ns;	
		resetd <= '1';
		
		jd <= '1';
		kd <= '0';
      wait for 150 ns;	
		resetd <= '0';
		
		jd <= '1';
		kd <= '1';
      wait for 150 ns;	
		resetd <= '0';	
   end process;

END;
