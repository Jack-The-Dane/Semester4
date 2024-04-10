----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2024 01:00:34 PM
-- Design Name: 
-- Module Name: DEMUX4_1 - Behavioral
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

entity DEMUX4_1 is
    Port ( I : in STD_LOGIC := '0';
           Sel : in std_logic_vector(1 downto 0) := "00";
           a : out STD_LOGIC;
           b : out STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC);
end DEMUX4_1;

architecture Behavioral of DEMUX4_1 is

begin

process(I, Sel)
begin
    if (Sel = "00") then
        a <= I;
        b <= '0'; c <= '0'; d <= '0';
    elsif (Sel = "01") then
        b <= I;
        a <= '0'; c <= '0'; d <= '0';
    elsif (Sel = "10") then
        c <= I;
        b <= '0'; a <= '0'; d <= '0';
    elsif (Sel = "11") then
        d <= I;
        b <= '0'; c <= '0'; d <= '0';
    end if;
end process;

end Behavioral;
