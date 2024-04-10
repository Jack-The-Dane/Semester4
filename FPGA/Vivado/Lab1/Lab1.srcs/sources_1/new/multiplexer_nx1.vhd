----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 12:28:25 PM
-- Design Name: 
-- Module Name: multiplexer_nx1 - Behavioral
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

entity multiplexer_nx1 is
    generic(n_select_bits : positive := 1);
Port ( i : in std_logic_vector(2**n_select_bits-1 downto 0) := (others => '0');
       s : in std_logic_vector(n_select_bits-1 downto 0) := (others => '0');
       o : out std_logic);
end multiplexer_nx1;

architecture Behavioral of multiplexer_nx1 is

begin
o <= i(to_integer(unsigned(s)));

end Behavioral;
