----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:01:16 04/18/2018 
-- Design Name: 
-- Module Name:    Multiplexor - arq_Multiplexor 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity Multiplexor is
    Port ( In1 : in  STD_LOGIC_VECTOR (31 downto 0);
           In2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Sc : in STD_LOGIC;
           Sout : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end Multiplexor;

architecture arq_Multiplexor of Multiplexor is


begin
	Sout <= In1 when Sc ='0' else In2; 
			
	
			

end arq_Multiplexor;

