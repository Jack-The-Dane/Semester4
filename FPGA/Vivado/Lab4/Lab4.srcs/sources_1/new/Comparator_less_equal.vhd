----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2024 02:48:22 PM
-- Design Name: 
-- Module Name: Comparator_less_equal - Behavioral
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

entity Comparator_less_equal is
    generic(bitwidth : positive := 8);
    Port ( a : in std_logic_vector(bitwidth-1 downto 0);
           cmp_const : in std_logic_vector(bitwidth-1 downto 0);
           cmp_out : out std_logic);
end Comparator_less_equal;

architecture Behavioral of Comparator_less_equal is

begin
cmp_out <= '1' when unsigned(a) <= unsigned(cmp_const) else '0';

end Behavioral;
