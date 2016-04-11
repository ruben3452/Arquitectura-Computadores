---Ruben Dario Acuña
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ProgramCounter is
    Port ( Pc_In : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Pc_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin
	process(ClK,Rst,Pc_In)
		begin
			if Rst='1' then
				Pc_Out <= "00000000000000000000000000000000";
			elsif rising_edge(CLK)then
				Pc_Out<=Pc_In;
			end if;
		end process;
end Behavioral;

