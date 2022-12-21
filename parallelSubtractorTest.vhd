
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY parallelSubtractorTest IS
END parallelSubtractorTest;
 
ARCHITECTURE behavior OF parallelSubtractorTest IS 
 
    COMPONENT parallelSubtractor
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
   uut: parallelSubtractor PORT MAP (
          a => a,
          b => b,
          bin => bin,
          df => df,
          bout => bout
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
		a <= "1010";
		b <= "0011";
		bin <= '0';
      wait for 100 ns;	
      wait;
   end process;

END;
