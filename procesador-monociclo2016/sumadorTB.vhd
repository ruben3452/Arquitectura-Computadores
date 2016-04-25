---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Sumador_TB IS
END Sumador_TB;
 
ARCHITECTURE behavior OF Sumador_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         Ope1 : IN  std_logic_vector(31 downto 0);
         Ope2 : IN  std_logic_vector(31 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ope1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Ope2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          Ope1 => Ope1,
          Ope2 => Ope2,
          Result => Result
        );

   -- Stimulus process
   stim_proc: process
   begin		
      Ope1<="00000000000000000000000000000011";
		Ope2<="00000000000000000000000000000100";
      wait for 100 ns;
		

   end process;

END;