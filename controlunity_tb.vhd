--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:48:37 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Julian Osorio S/Desktop/Universidad/Arquitectura de computadores/Modulos/controlunity_tb.vhd
-- Project Name:  Modulos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controlunity
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
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY controlunity_tb IS
END controlunity_tb;
 
ARCHITECTURE behavior OF controlunity_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controlunity
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         Aluop : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Aluop : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controlunity PORT MAP (
          op => op,
          op3 => op3,
          Aluop => Aluop
        );

 

   -- Stimulus process
  stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Op <= "10";
		Op3 <= "000000";
		wait for 40 ns;
		
		Op <= "11";
		Op3 <= "000001";
		wait for 40 ns;
		
		Op <= "10";
		Op3 <= "000001";
		wait for 40 ns;
		
		Op <= "00";
		Op3 <= "000000";
		wait for 40 ns;
		

      wait;
   end process;

END;
