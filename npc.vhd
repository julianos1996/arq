----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:52:51 04/18/2018 
-- Design Name: 
-- Module Name:    npc - arq_npc 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity npc is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           outaddress : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end npc;

architecture arq_npc of npc is

begin

		process(clk,rst)

	begin

		if rst = '1' then 
			outaddress <= "00000000000000000000000000000000";
		elsif rising_edge(clk) then 
			outaddress <= address;
		end if;
	end process;


end arq_npc;

