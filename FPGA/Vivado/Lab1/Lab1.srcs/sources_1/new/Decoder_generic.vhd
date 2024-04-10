----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 01:50:18 PM
-- Design Name: 
-- Module Name: Decoder_generic - Behavioral
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

entity Decoder_generic is
    generic(n_inputs : positive := 1);
    Port ( i : in std_logic_vector(n_inputs-1 downto 0) := (others => '0');
           o : out std_logic_vector(2**n_inputs-1 downto 0));
end Decoder_generic;

architecture Behavioral of Decoder_generic is

begin
o <= (TO_INTEGER(unsigned(i)) => '1',
      others => '0');

end Behavioral;
