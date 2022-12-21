
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FourBitRegisterUsingDFFTest IS
END FourBitRegisterUsingDFFTest;
 
ARCHITECTURE behavior OF FourBitRegisterUsingDFFTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FourBitRegisterUsingDFF
    PORT(
         data : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         dh : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal dh : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FourBitRegisterUsingDFF PORT MAP (
          data => data,
          clk => clk,
          reset => reset,
          dh => dh
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
		reset <= '1'; 
		reset <= '0';
		data <= "0001"; wait for 150 ns; 
		data <= "0010"; wait for 150 ns; 
		data <= "0011"; wait for 150 ns; 
		data <= "0100"; wait for 150 ns; 
		data <= "0101"; wait for 150 ns; 
		data <= "0110"; wait for 150 ns; 
		
   end process;

END;
