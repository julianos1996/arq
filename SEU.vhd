----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:04:30 04/18/2018 
-- Design Name: 
-- Module Name:    SEU - arq_SEU 
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



entity SEU is
    Port ( Imm : in  STD_LOGIC_VECTOR (12 downto 0);
           Sout : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end SEU;

architecture arq_SEU of SEU is

begin
	process(Imm)
		begin
			if Imm(12) = '0' then 
				Sout <= "0000000000000000000" & imm;
			else
				Sout <= "1111111111111111111" & imm;
			end if;
	end process;

end arq_SEU;
