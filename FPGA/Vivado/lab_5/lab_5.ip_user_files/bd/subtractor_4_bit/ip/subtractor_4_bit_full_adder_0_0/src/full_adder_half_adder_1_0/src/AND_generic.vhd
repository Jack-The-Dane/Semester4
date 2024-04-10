----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 01:07:33 PM
-- Design Name: 
-- Module Name: AND_generic - Behavioral
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

entity AND_generic is
    generic(n_inputs : positive := 1);
Port ( i : in std_logic_vector(n_inputs-1 downto 0) := (others => '0');
       o : out std_logic);
end AND_generic;

architecture Behavioral of AND_generic is

begin
process(i)
begin
if(unsigned(i) = (2**n_inputs)-1) then
    o <= '1';
else o <= '0';
end if;
end process;
end Behavioral;
