----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:43:53 04/18/2018 
-- Design Name: 
-- Module Name:    controlunity - arq_controlunity 
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


entity controlunity is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           Aluop : out  STD_LOGIC_VECTOR (5 downto 0) := (others => '0'));
end controlunity;

architecture arq_controlunity of controlunity is

begin
	process(Op, Op3)
		begin 
			case Op is
				when "10" => 
					case Op3 is
						when "000000" => Aluop <= "000000";
						when "000100" => Aluop <= "000001";
						when "000001" => Aluop <= "000010";
						when "000010" => Aluop <= "000011";
						when "000011" => Aluop <= "000100";
						when "000111" => Aluop <= "000101";
						when "000101" => Aluop <= "000110";
						when "000110" => Aluop <= "000111";
						when others => Aluop <= "111111";
					end case;
				when others => Aluop <= "111111";
			end case;
	end process;
end arq_controlunity;

