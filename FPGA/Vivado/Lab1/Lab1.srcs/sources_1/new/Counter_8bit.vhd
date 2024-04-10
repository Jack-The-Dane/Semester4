----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 09:44:25 PM
-- Design Name: 
-- Module Name: Counter_8bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_8bit is
    Port ( clk : in STD_LOGIC := '0';
           rst : in STD_LOGIC := '0';
           counter_out : out STD_LOGIC_VECTOR (7 downto 0) := x"00");
end Counter_8bit;

architecture Behavioral of Counter_8bit is
signal temp_count: unsigned(7 downto 0) := x"00";
begin
process(rst, clk)
begin
if(rst = '1') then
    temp_count <= x"00";
elsif(rising_edge(clk)) then
    temp_count <= temp_count + 1;
end if;
counter_out <= std_logic_vector(temp_count);
end process;

end Behavioral;
