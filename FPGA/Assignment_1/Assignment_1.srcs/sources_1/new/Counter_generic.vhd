----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 01:30:05 PM
-- Design Name: 
-- Module Name: Counter_generic - Behavioral
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

entity Counter_generic is
    generic(max_val : positive := 255; bit_width : positive := 8);
    Port ( clk : in std_logic := '0';
           rst : in std_logic := '1';
           cnt_full : out std_logic;
           current_val : out std_logic_vector(bit_width-1 downto 0));
end Counter_generic;

architecture Behavioral of Counter_generic is
signal temp_count: unsigned(bit_width-1 downto 0) := (others => '0');
begin
process(rst, clk)
begin
if(rst = '0') then
    temp_count <= (others => '0');
elsif(falling_edge(clk)) then
    temp_count <= temp_count + 1;
end if;
if(temp_count = max_val) then
    cnt_full <= '1';
else cnt_full <= '0';
end if;
if(temp_count > max_val) then
    temp_count <= (others => '0');
end if;
end process;
current_val <= std_logic_vector(temp_count);

end Behavioral;
