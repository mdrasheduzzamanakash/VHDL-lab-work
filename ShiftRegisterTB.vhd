LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ShiftRegisterTB IS
END ShiftRegisterTB;
 
ARCHITECTURE behavior OF ShiftRegisterTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         i : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          i => i,
          clk => clk,
          reset => reset,
          q => q
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
		reset<='1';
		reset<='0'; i <= '1'; wait for 100 ns;	
		reset<='0'; i <= '1'; wait for 100 ns;	
		reset<='0'; i <= '1'; wait for 100 ns;	
		reset<='0'; i <= '1'; wait for 100 ns;	
		reset<='0'; i <= '0'; wait for 100 ns;
		reset<='0'; i <= '0'; wait for 100 ns;			
   end process;

END;
