---Ruben Dario Acuña
--Andres Felipe Moreno Castañeda
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Sumador is
    Port ( Ope1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Ope2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end Sumador;

architecture Behavioral of Sumador is

begin
	process (Ope1,Ope2)
		begin
			Result<=Ope1+Ope2;
	end process;
end Behavioral;

