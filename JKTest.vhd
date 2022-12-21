LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY JKTest IS
END JKTest;
 
ARCHITECTURE behavior OF JKTest IS 
 
    COMPONENT JK
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK PORT MAP (
          j => j,
          k => k,
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
		j <= '0';
		k <= '0';
      wait for 150 ns;	
		reset <= '1';
		
		j <= '0';
		k <= '1';
      wait for 150 ns;	
		reset <= '0';
		
		j <= '1';
		k <= '0';
      wait for 150 ns;	
		reset <= '1';
		
		j <= '1';
		k <= '1';
      wait for 150 ns;	
		reset <= '1';
   end process;

END;
