---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( clk : in STD_LOGIC;
			  Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           Rst : in  STD_LOGIC;
           CRS1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRS2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RF;

architecture Behavioral of RF is
	type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
	signal registers : registerFile:= (others => x"00000000");
begin
	process(Rst, Rs1, Rs2, Rd, DWR)
		begin
		--registers(0) <= "00000000000000000000000000000000";
			if (Rst = '1')then
				CRS1 <= (others => '0');
				CRS2 <= (others => '0');
				registers <= (others => x"00000000");
			else
				CRS1 <= registers(conv_integer(Rs1));
				CRS2 <= registers(conv_integer(Rs2));
				
				if (Rd /= "00000") then 
					registers(conv_integer(Rd)) <= DWR;
				end if;
				
			--	CRS1 <= registers(conv_integer(Rs1));
			--	CRS2 <= registers(conv_integer(Rs2));
				
			end if;			
	end process;
	
end Behavioral;