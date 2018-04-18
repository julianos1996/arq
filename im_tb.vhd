--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:22:55 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Julian Osorio S/Desktop/Universidad/Arquitectura de computadores/Modulos/im_tb.vhd
-- Project Name:  Modulos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: im
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
 
ENTITY im_tb IS
END im_tb;
 
ARCHITECTURE behavior OF im_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT im
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         outInstruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal outInstruction : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: im PORT MAP (
          address => address,
          reset => reset,
          outInstruction => outInstruction
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '0';
		address <= "00000000000000000000000000000000";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000001";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000010";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000011";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000100";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000101";
      wait for 100 ns;
		reset <= '0';
		address <= "00000000000000000000000000000110";
      wait for 100 ns;

      wait;
   end process;

END;
