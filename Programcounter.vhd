----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:04 04/04/2018 
-- Design Name: 
-- Module Name:    Programcounter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Programcounter is
    Port ( address : in  STD_LOGIC_VECTOR(31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Programcounter;

architecture Behavioral of Programcounter is


begin
		process(clk)
		begin
				if (rising_edge(clk)) then
						if(rst = '1') then
								pc_out <= (others=>'0');
						else
								pc_out <= address;
						end if;
				end if;
		end process;


end Behavioral;

