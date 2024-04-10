----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 02:38:49 PM
-- Design Name: 
-- Module Name: D_Latch - Behavioral
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

entity D_Latch is
    generic(n_bits : positive := 1);
    Port ( en : in STD_LOGIC;
           D : in std_logic_vector(n_bits-1 downto 0);
           Q : out std_logic_vector(n_bits-1 downto 0);
           nQ : out std_logic_vector(n_bits-1 downto 0));
end D_Latch;

architecture Behavioral of D_Latch is

begin
process(en)
begin
    if(en = '1') then
        Q <= D;
        nQ <= not(D);
    end if;
end process;

end Behavioral;
