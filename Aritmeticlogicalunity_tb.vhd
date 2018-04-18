--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:58:22 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Julian Osorio S/Desktop/Universidad/Arquitectura de computadores/Modulos/Aritmeticlogicalunity_tb.vhd
-- Project Name:  Modulos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Aritmeticlogicalunity
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
 
ENTITY Aritmeticlogicalunity_tb IS
END Aritmeticlogicalunity_tb;
 
ARCHITECTURE behavior OF Aritmeticlogicalunity_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Aritmeticlogicalunity
    PORT(
         Aluop : IN  std_logic_vector(5 downto 0);
         In1 : IN  std_logic_vector(31 downto 0);
         In2 : IN  std_logic_vector(31 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Aluop : std_logic_vector(5 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
   signal In2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Aritmeticlogicalunity PORT MAP (
          Aluop => Aluop,
          In1 => In1,
          In2 => In2,
          Result => Result
        );

  
   -- Stimulus process
      stim_proc: process
   begin		
			
		In1 <= "00000000000000000000000000000001";
		In2 <= "00000000000000000000000000000010";
		Aluop <= "000111";
		wait for 40 ns;
		
		In1 <= "00000000000000000000000000000001";
		In2 <= "00000000000000000000000000000010";
		Aluop <= "000101";
		wait for 40 ns;
		
		In1 <= "00000000000000000000000000000001";
		In2 <= "00000000000000000000000000000010";
		Aluop <= "000010";
		wait for 40 ns;
		
		In1 <= "00000000000000000000000000000001";
		In2 <= "00000000000000000000000000000010";
		Aluop <= "000100";
		wait for 40 ns;
		
   end process;

END;
