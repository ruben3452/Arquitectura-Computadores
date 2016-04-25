---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY ProgramCounter_TB IS
END ProgramCounter_TB;
 
ARCHITECTURE behavior OF ProgramCounter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProgramCounter
    PORT(
         Pc_In : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         CLK : IN  std_logic;
         PC_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Pc_In : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal PC_Out : std_logic_vector(31 downto 0);
	
	-- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          Pc_In => Pc_In,
          Rst => Rst,
          CLK => CLK,
          PC_Out => PC_Out
        );
	
	-- Clock process definitions
   clk_process :process
   begin 
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
   end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
		Rst <= '1';
		wait for 100 ns;
      Pc_In <= "01010100100010001001010100100100";
      Rst <= '0';
      wait for 100 ns;
		Pc_In <= "01011101110010101011010100100100";
      
      
   end process;

END;

