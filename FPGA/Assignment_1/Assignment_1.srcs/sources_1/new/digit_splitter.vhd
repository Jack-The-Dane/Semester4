----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 03:09:43 PM
-- Design Name: 
-- Module Name: digit_splitter - Behavioral
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

entity digit_splitter is
    Port ( digits_in : in std_logic_vector(6 downto 0);
           LSD_out : out std_logic_vector(3 downto 0);
           MSD_out : out std_logic_vector(3 downto 0));
end digit_splitter;

architecture Behavioral of digit_splitter is
begin
LSD_out <= std_logic_vector(unsigned("mod"(unsigned(digits_in), 10)(3 downto 0)));
MSD_out <= std_logic_vector(unsigned("/"(unsigned(digits_in), 10)(3 downto 0)));
end Behavioral;
