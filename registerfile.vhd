----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:05 04/18/2018 
-- Design Name: 
-- Module Name:    registerfile - arq_registerfile 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity registerfile is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Reset : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');--contenido del registro rs1
           Crs2 : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end registerfile;

architecture arq_registerfile of registerfile is

type ram_type is array (0 to 31) of std_logic_vector (31 downto 0);
signal registros : ram_type := (others => x"00000000");

begin
	process(Reset, Rs1, Rs2, Rd, Data)
		begin
			if Reset = '1' then
				Crs1 <= (others => '0');
				Crs2 <= (others => '0');
				registros <= (others => x"00000000");
			else
				Crs1 <= registros(conv_integer(Rs1));
				Crs2 <= registros(conv_integer(Rs2));
				if Rd /= "00000" then
					registros(conv_integer(Rd)) <= Data;
				end if;
			end if;
	end process;

end arq_registerfile;

