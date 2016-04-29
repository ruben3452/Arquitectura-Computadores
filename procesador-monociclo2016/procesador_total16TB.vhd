---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY procesador_total16TB IS
END procesador_total16TB;
 
ARCHITECTURE behavior OF procesador_total16TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesador_total16
    PORT(
         Reset : IN  std_logic;
         ClK : IN  std_logic;
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal ClK : std_logic := '0';

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant ClK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador_total16 PORT MAP (
          Reset => Reset,
          ClK => ClK,
          AluResult => AluResult
        );

   -- Clock process definitions
   ClK_process :process
   begin
		ClK <= '0';
		wait for ClK_period/2;
		ClK <= '1';
		wait for ClK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
   
      Reset <= '1';
      wait for 100 ns;
		Reset <= '0';
		--wait for 100 ns;
		wait;
   end process;
       


END;
