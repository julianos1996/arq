--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:06:51 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Julian Osorio S/Desktop/Universidad/Arquitectura de computadores/Modulos/SEU_tb.vhd
-- Project Name:  Modulos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEU
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

 
ENTITY TB_SEU IS
END TB_SEU;
 
ARCHITECTURE behavior OF TB_SEU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEU
    PORT(
         Imm : IN  std_logic_vector(12 downto 0);
         Sout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Imm : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal Sout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEU PORT MAP (
          Imm => Imm,
          Sout => Sout
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Imm <= "0111111111111";
		wait for 20 ns;
		Imm <= "1000000000001";
		wait for 20 ns;
		Imm <= "1110000000001";
		wait for 20 ns;
		Imm <= "0110000000001";
		wait for 20 ns;

 -- insert stimulus here 

      wait;
   end process;

END;