----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 01:57:28 PM
-- Design Name: 
-- Module Name: Encoder_generic - Behavioral
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

entity Encoder_generic is
    generic(n_outputs : positive := 1);
    Port ( i : in STD_LOGIC_vector(2**n_outputs-1 downto 0) := (others => '0');
           o : out std_logic_vector(n_outputs-1 downto 0));
end Encoder_generic;

architecture Behavioral of Encoder_generic is

begin


end Behavioral;
