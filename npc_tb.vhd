--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:56:58 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/Julian Osorio S/Desktop/Universidad/Arquitectura de computadores/Modulos/npc_tb.vhd
-- Project Name:  Modulos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: npc
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
 

ENTITY npc_tb IS
END npc_tb;
 
ARCHITECTURE behavior OF npc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT npc
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         outaddress : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal outaddress : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: npc PORT MAP (
          address => address,
          rst => rst,
          clk => clk,
          outaddress => outaddress
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      address <= "10100000000000000000000000000000";
		rst <= '0';
      wait for 40 ns;	

      address <= "10100000000000000000000000000000";
		rst <= '1';
      wait for 40 ns;	
		
      wait;
   end process;

END;
