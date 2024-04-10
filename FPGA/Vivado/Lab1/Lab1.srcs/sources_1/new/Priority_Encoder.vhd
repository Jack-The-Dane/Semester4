----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2024 01:34:42 PM
-- Design Name: 
-- Module Name: Priority_Encoder - Behavioral
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

entity Priority_Encoder is
    Port ( D : in std_logic_vector(3 downto 0) := "0000";
           Y : out std_logic_vector(1 downto 0));
end Priority_Encoder;

architecture Behavioral of Priority_Encoder is

begin
process(D)
begin
    if( D(3) = '1') then
        y <= "11";
    elsif ( D(2) = '1' ) then
        y <= "10";
    elsif ( D(1) = '1' ) then
        y <= "01";
    elsif ( D(0) = '1') then
        y <= "00";
    else 
        y <= "--";
    end if;
end process;

end Behavioral;
