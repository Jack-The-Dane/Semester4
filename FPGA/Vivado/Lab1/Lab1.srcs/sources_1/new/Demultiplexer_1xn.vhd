----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 12:45:39 PM
-- Design Name: 
-- Module Name: Demultiplexer_1xn - Behavioral
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

entity Demultiplexer_1xn is
    generic(n_select_bits : positive := 1);
    Port ( i : in STD_LOGIC := '1'; 
           s : in std_logic_vector(n_select_bits-1 downto 0) := (others => '0');
           o : out std_logic_vector(2**n_select_bits-1 downto 0));
end Demultiplexer_1xn;

architecture Behavioral of Demultiplexer_1xn is

begin
o <= ( to_integer(unsigned(s)) => i,
       others => '0');

end Behavioral;
