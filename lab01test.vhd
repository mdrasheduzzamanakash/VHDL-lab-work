
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lab01test IS
END lab01test;

ARCHITECTURE behavior OF lab01test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Carry => Carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= '0';
		B <= '0';
      wait for 100 ns;	
		
		A <= '0';
		B <= '1';
      wait for 100 ns;	
		
		A <= '1';
		B <= '0';
      wait for 100 ns;	
		
		A <= '1';
		B <= '1';
      wait for 100 ns;	

      wait;
   end process;

END;
