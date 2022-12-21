LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY SRTest IS
END SRTest;
 
ARCHITECTURE behavior OF SRTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR
    PORT(
         s : IN  std_logic;
         r : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR PORT MAP (
          s => s,
          r => r,
          reset => reset,
          clk => clk,
          q => q,
          qbar => qbar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		s <= '0'; r <= '0'; wait for 150 ns; reset <= '1';
		s <= '0'; r <= '1'; wait for 150 ns; reset <= '0';
		s <= '0'; r <= '1'; wait for 150 ns; reset <= '0';
		s <= '1'; r <= '0'; wait for 150 ns; reset <= '0';
		s <= '0'; r <= '1'; wait for 150 ns; reset <= '0';
   end process;

END;
