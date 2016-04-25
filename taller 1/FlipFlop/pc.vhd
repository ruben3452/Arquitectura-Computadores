----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:38 10/23/2015 
-- Design Name: 
-- Module Name:    ProgramCounter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

	end FlipFlop;
end Behavioral;
