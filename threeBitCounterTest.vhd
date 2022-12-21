
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY threeBitCounterTest IS
END threeBitCounterTest;
 
ARCHITECTURE behavior OF threeBitCounterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT threeBitCounter
    PORT(
         clk : IN  std_logic;
         Q0 : INOUT  std_logic;
         Q1 : INOUT  std_logic;
         Q2 : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

	--BiDirs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: threeBitCounter PORT MAP (
          clk => clk,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

END;
