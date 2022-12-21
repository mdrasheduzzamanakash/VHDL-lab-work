LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fulladrtest IS
END fulladrtest;
ARCHITECTURE behavior OF fulladrtest IS 
    COMPONENT fuladr
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';
   signal Sum : std_logic;
   signal Cout : std_logic;
BEGIN
   uut: fuladr PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   stim_proc: process
   begin		
		A <= '0'; B <= '0'; Cin <= '0';
      wait for 100 ns;
		A <= '0'; B <= '0'; Cin <= '1';
      wait for 100 ns;
		A <= '0'; B <= '1'; Cin <= '0';
      wait for 100 ns;
		A <= '0'; B <= '1'; Cin <= '1';
      wait for 100 ns;
		A <= '1'; B <= '0'; Cin <= '0';
      wait for 100 ns;
		A <= '1'; B <= '0'; Cin <= '1';
      wait for 100 ns;
		A <= '1'; B <= '1'; Cin <= '0';
      wait for 100 ns;
		A <= '1'; B <= '1'; Cin <= '1';
      wait for 100 ns;
      wait;
   end process;

END;
