---Ruben Dario Acuña
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY CU_TB IS
END CU_TB;
 
ARCHITECTURE behavior OF CU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         Op : IN  std_logic_vector(1 downto 0);
         Op3 : IN  std_logic_vector(5 downto 0);
         AluOp : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal Op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal AluOp : std_logic_vector(5 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          Op => Op,
          Op3 => Op3,
          AluOp => AluOp
        );

	-- Stimulus process
   stim_proc: process
   begin		
      Op <= "10";
		Op3 <= "000000";
      wait for 100 ns;	
		Op <= "10";
		Op3 <= "000100";
      wait for 100 ns;	

  
   end process;
END;
