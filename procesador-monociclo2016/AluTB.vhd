--- Ruben Dario Acuña O
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Alu_TB IS
END Alu_TB;
 
ARCHITECTURE behavior OF Alu_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         AluOp : IN  std_logic_vector(5 downto 0);
         ope1 : IN  std_logic_vector(31 downto 0);
         Ope2 : IN  std_logic_vector(31 downto 0);
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');
   signal ope1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Ope2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          AluOp => AluOp,
          ope1 => ope1,
          Ope2 => Ope2,
          AluResult => AluResult
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		ope1 <= "00000000000000000000000000000111";
		ope2 <= "00000000000000000000000000000111";
		ALUop <= "000000"; --add
		wait for 5 ms;
		ope1 <= "00000000000000000000000000000011";
		ope2 <= "00000000000000000000000000000001";
		ALUop <= "000000"; --add
		wait for 5 ms;
		ope1 <= "00000000000000000000000000000011";
		ope2 <= "00000000000000000000000000000001";
		ALUop <= "000100"; --sub
		wait for 5 ms;
		ope1 <= "10000000000000000000000000000011";
		ope2 <= "00000000000000000001000000000001";
		ALUop <= "000010"; --or
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
