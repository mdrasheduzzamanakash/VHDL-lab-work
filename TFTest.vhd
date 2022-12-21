LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TFTest IS
END TFTest;
 
ARCHITECTURE behavior OF TFTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TF
    PORT(
         tin : IN  std_logic;
         tclk : IN  std_logic;
         treset : IN  std_logic;
         tq : OUT  std_logic;
         tqbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal tin : std_logic := '0';
   signal tclk : std_logic := '0';
   signal treset : std_logic := '0';

 	--Outputs
   signal tq : std_logic;
   signal tqbar : std_logic;

   -- Clock period definitions
   constant tclk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TF PORT MAP (
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
      tin <= '0'; wait for 150 ns; treset <= '1';
		tin <= '1'; wait for 150 ns; treset <= '0';
		tin <= '1'; wait for 150 ns; treset <= '0';
		tin <= '1'; wait for 150 ns; treset <= '0';
		tin <= '1'; wait for 150 ns; treset <= '0';
		tin <= '1'; wait for 150 ns; treset <= '0';
   end process;

END;
