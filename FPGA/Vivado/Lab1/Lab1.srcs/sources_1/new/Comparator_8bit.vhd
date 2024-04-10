----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 09:44:25 PM
-- Design Name: 
-- Module Name: Comparator_8bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator_8bit is
    Port ( cmp_in : in STD_LOGIC_VECTOR (7 downto 0) := x"00";
           cmp_val : in STD_LOGIC_VECTOR (7 downto 0) := x"00";
           cmp_res : out STD_LOGIC);
end Comparator_8bit;

architecture Behavioral of Comparator_8bit is

begin

cmp_res <= '1' when cmp_in = cmp_val else '0';

end Behavioral;
