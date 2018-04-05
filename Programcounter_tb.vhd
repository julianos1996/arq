--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:12:26 04/04/2018
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/Julian/pc/Programcounter_tb.vhd
-- Project Name:  pc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Programcounter
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
 
ENTITY Programcounter_tb IS
END Programcounter_tb;
 
ARCHITECTURE behavior OF Programcounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Programcounter
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         pc_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal pc_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Programcounter PORT MAP (
          address => address,
          rst => rst,
          clk => clk,
          pc_out => pc_out
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
		address <= "00000000000000000000000000000010";
		rst <='1';
      wait for 20 ns;

		address <= "00000000000000000000000000000011";
		rst <='0';
      wait for 20 ns;
		
		address <= "00000000000000000000000000000111";
		rst <='0';
      wait for 20 ns;
		
		address <= "00000000000000000000000000001111";
		rst <='0';
      wait for 20 ns;
		
		address <= "00000000000000000000000000000011";
		rst <='0';
      wait for 20 ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
