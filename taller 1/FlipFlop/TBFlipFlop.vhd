--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:32:42 03/29/2016
-- Design Name:   
-- Module Name:   /home/alucard/Arquitectura-Computadores/taller 1/FlipFlop/TBFlipFlop.vhd
-- Project Name:  FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TBFlipFlop IS
END TBFlipFlop;
 
ARCHITECTURE behavior OF TBFlipFlop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         D : IN  std_logic_vector(31 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(31 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          D => D,
          RST => RST,
          CLK => CLK,
          Dout => Dout
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		RST<='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;	
			D<='1';
			RST<='0';
		wait for 30 ns;	
			D<='0';
		wait for 30 ns;	
			D<='1';
		wait for 30 ns;	
			D<='0';	
      

      -- insert stimulus here 

      wait;
   end process;

END;
