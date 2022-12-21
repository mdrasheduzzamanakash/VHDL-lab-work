LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DFFTest IS
END DFFTest;
 
ARCHITECTURE behavior OF DFFTest IS  
    COMPONENT DFF
    PORT(
         d : IN  std_logic;
         dclk : IN  std_logic;
         dreset : IN  std_logic;
         dq : OUT  std_logic;
         dqbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal dclk : std_logic := '0';
   signal dreset : std_logic := '0';

 	--Outputs
   signal dq : std_logic;
   signal dqbar : std_logic;

   -- Clock period definitions
   constant dclk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF PORT MAP (
          d => d,
          dclk => dclk,
          dreset => dreset,
          dq => dq,
          dqbar => dqbar
        );

   -- Clock process definitions
   dclk_process :process
   begin
		dclk <= '0';
		wait for dclk_period/2;
		dclk <= '1';
		wait for dclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		d <= '0'; wait for 100 ns; dreset <= '1';
		d <= '1'; wait for 100 ns; dreset <= '0';
		d <= '1'; wait for 100 ns; dreset <= '0';
		d <= '0'; wait for 100 ns; dreset <= '0';
		d <= '1'; wait for 100 ns; dreset <= '0';
		
   end process;

END;
