---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY RF_tb IS
END RF_tb;
 
ARCHITECTURE behavior OF RF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         clk : IN  std_logic;
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(5 downto 0);
         DWR : IN  std_logic_vector(31 downto 0);
			reset : IN std_logic;
         
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(5 downto 0) := (others => '0');
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');
	signal reset : std_logic := '0';
   

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          clk => clk,
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          
			 reset => reset,
          Dwr => Dwr,
          Crs1 => Crs1,
          Crs2 => Crs2
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
		Rs2 <="10000";
		Rd <="000110";
		
		DWR<="00000000000000000000000000000111";
		wait for 5 ms;
		
		Rs1 <="00110";
		Rs2 <="10000";
		Rd <="010000";
		DWR<="00000000000000000000000000000011";
		wait for 5 ms;
		
		Rs1 <="10000";
		Rs2 <="00000";
		Rd <="000000";
		DWR<="00000011111111111111111110000000";
		wait for 5 ms;
		
		
      wait;
   end process;

END;
