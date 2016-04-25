---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY InstructionMemory_TB IS
END InstructionMemory_TB;
 
ARCHITECTURE behavior OF InstructionMemory_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstructionMemory
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         outInstruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal outInstruction : std_logic_vector(31 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstructionMemory PORT MAP (
          address => address,
          reset => reset,
          outInstruction => outInstruction
        );

	-- Stimulus process
   stim_proc: process
   begin		
		address<="00000000000000000000000000000000";
		reset<='0';
      wait for 100 ns;
		address<="00000000000000000000000000000100";
		reset<='0';
      wait for 100 ns;
		
	end process;
END;