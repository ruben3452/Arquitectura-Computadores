---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Procesador_total16 is
    Port ( Reset : in  STD_LOGIC;
           ClK : in  STD_LOGIC;
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador_total16;

architecture Behavioral of Procesador_total16 is

	COMPONENT Sumador
		PORT(
			Ope1 : IN std_logic_vector(31 downto 0);
			Ope2 : IN std_logic_vector(31 downto 0);          
			Result : OUT std_logic_vector(31 downto 0)
			);
		END COMPONENT;
		
	COMPONENT SEU
		PORT ( disp13 : in  STD_LOGIC_VECTOR(12 downto 0);
           disp32 : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
		END COMPONENT;

	COMPONENT RF
		PORT ( clk : in STD_LOGIC;
			  Rs1 : in  STD_LOGIC_VECTOR(4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR(4 downto 0);
           Rd : in  STD_LOGIC_VECTOR(4 downto 0); 
			  Rst : in STD_LOGIC;
			  Dwr : in STD_LOGIC_VECTOR(31 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR(31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
		END COMPONENT;
	
	COMPONENT MUX
	PORT(
		input0 : in  STD_LOGIC_VECTOR(31 downto 0);
      input1 : in  STD_LOGIC_VECTOR(31 downto 0);
		selector : in STD_LOGIC;
      output : out  STD_LOGIC_VECTOR(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT InstructionMemory
	PORT(
		--clk : in STD_LOGIC;
		address : in  STD_LOGIC_VECTOR (31 downto 0);
      reset : in  STD_LOGIC;
      outInstruction : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT CU
	PORT(
		Op : IN std_logic_vector(1 downto 0);
		Op3 : IN std_logic_vector(5 downto 0);          
		AluOp : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Alu
	PORT(
		AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
      ope1 : in  STD_LOGIC_VECTOR (31 downto 0);
      Ope2 : in  STD_LOGIC_VECTOR (31 downto 0);
      AluResult : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ProgramCounter
	PORT(
		Pc_In : IN std_logic_vector(31 downto 0);
		Rst : IN std_logic;
		CLK : IN std_logic;          
		PC_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal CLKAll: std_logic;
	signal RestAll: std_logic;
	
	signal RegistroSalida: std_logic_vector(31 downto 0);
	signal ResultadoAlu: std_logic_vector(31 downto 0);
	signal SalidaSeu: std_logic_vector(31 downto 0);
	signal SalidaCRs1: std_logic_vector(31 downto 0);
	signal SalidaCRs2: std_logic_vector(31 downto 0);
	signal SalidaRs2: std_logic_vector(31 downto 0);
	signal SalidaAluop: std_logic_vector(5 downto 0);
	signal SalidaProgramCounter: std_logic_vector(31 downto 0);
	signal SalidaNProgramCounter: std_logic_vector(31 downto 0);
	signal SalidaSumador: std_logic_vector(31 downto 0);
	
begin

	CLKAll <= CLK;
	RestAll <= Reset;
	
	Inst_Sumador: Sumador PORT MAP(
		Ope1 => "00000000000000000000000000000001",
		Ope2 => SalidaNProgramCounter,
		Result => SalidaSumador
	);
	
	Inst_NProgramCounter: ProgramCounter PORT MAP(
		Pc_In =>  SalidaSumador,
		Rst => RestALL,
		CLK => CLKALL,
		Pc_Out => SalidaNProgramCounter
	);
	
	Inst_ProgramCounter: ProgramCounter PORT MAP(
		Pc_In => SalidaNProgramCounter,
		Rst => RestAll,
		CLK => CLKALL,
		Pc_Out => SalidaProgramCounter
	);
	
	Inst_InstructionMemory: InstructionMemory PORT MAP(
		
		address => SalidaProgramCounter,
		reset => RestALL,
		outInstruction =>RegistroSalida
	);
	
	Inst_RF: RF PORT MAP(
		Rs1 => RegistroSalida(18 downto 14),
		Rs2 => RegistroSalida(4 downto 0),
		Rd => RegistroSalida(29 downto 25),
		DWR => ResultadoAlu,
		Rst => RestALL,
		clk => CLKALL,
		CRS1 => SalidaCRs1,
		CRS2 => SalidaCRs2
	);
	
	Inst_SEU: SEU PORT MAP(
		disp13 => RegistroSalida(12 downto 0),
		disp32 => SalidaSeu
	);
	
	Inst_CU: CU PORT MAP(
		Op => RegistroSalida(31 downto 30),
		Op3 => RegistroSalida(24 downto 19),
		AluOp => SalidaAluop
	);
	
	Inst_MUX: MUX PORT MAP(
		input0 => SalidaCRs2,
		selector => RegistroSalida(13),
		input1 => SalidaSeu,
		output => SalidaRs2
	);
	
	Inst_Alu: Alu PORT MAP(
		AluOp => SalidaAluop,
		Ope1 => SalidaCRs1,
		Ope2 => SalidaRs2,
		AluResult => ResultadoAlu
	);

	AluResult<=ResultadoAlu;
	
end Behavioral;

