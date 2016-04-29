---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY RF_TB IS
END RF_TB;
 
ARCHITECTURE behavior OF RF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         clk : IN  std_logic;
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         DWR : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         CRS1 : OUT  std_logic_vector(31 downto 0);
         CRS2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';

 	--Outputs
   signal CRS1 : std_logic_vector(31 downto 0);
   signal CRS2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          clk => clk,
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          DWR => DWR,
          Rst => Rst,
          CRS1 => CRS1,
          CRS2 => CRS2
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		Rs1 <="01000";
		Rs2 <="010000";
		Rd <="000110";
		
		DWR<="00000000000000000000000000000111";
		wait for 5 ms;
		
		Rs1 <="00110";
		Rs2 <="10000";
		Rd <="10000";
		DWR<="00000000000000000000000000000011";
		wait for 5 ms;
		
		Rs1 <="10000";
		Rs2 <="00000";
		Rd <="00000";
		DWR<="00000011111111111111111110000000";
		wait for 5 ms;
      
   end process;

END;
