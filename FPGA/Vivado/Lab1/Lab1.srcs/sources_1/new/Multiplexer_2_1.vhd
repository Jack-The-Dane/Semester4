----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2024 03:37:18 PM
-- Design Name: 
-- Module Name: Multiplexer_2_1 - Behavioral
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

entity Multiplexer_2_1 is
    Port ( I0 : in STD_LOGIC := '0';
           I1 : in STD_LOGIC := '0';
           S0 : in STD_LOGIC := '0';
           O0 : out STD_LOGIC);
end Multiplexer_2_1;

architecture Behavioral of Multiplexer_2_1 is

begin
O0 <= (I0 and not(S0)) or (I1 and S0);

end Behavioral;
