
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FullSubtractorUComplementTest IS
END FullSubtractorUComplementTest;
 
ARCHITECTURE behavior OF FullSubtractorUComplementTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullSubtractorUsingComplements
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic;
         df : OUT  std_logic_vector(3 downto 0);
         bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic := '0';

 	--Outputs
   signal df : std_logic_vector(3 downto 0);
   signal bout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullSubtractorUsingComplements PORT MAP (
          a => a,
          b => b,
          bin => bin,
          df => df,
          bout => bout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "1010";
		b <= "0011";
		bin <= '1';
      wait;
   end process;

END;
