----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2024 02:56:16 PM
-- Design Name: 
-- Module Name: pwm_block - Behavioral
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

entity pwm_block is
    generic(counter_bits : positive := 8);
    Port ( clk : in STD_LOGIC := '0';
           en : in std_logic := '1';
           rst : in std_logic := '0';
           duty : in std_logic_vector(counter_bits-1 downto 0) := (others => '0');
           pwm : out std_logic);
end pwm_block;

architecture Behavioral of pwm_block is
    signal  cnt_int :   UNSIGNED(counter_bits-1 downto 0) :=  (others => '0');
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            cnt_int     <=  (others => '0');
        elsif(rising_edge(clk)) then
            if (en = '1') then
                cnt_int <=  cnt_int + "1";
            end if;
        end if;
    end process;

pwm <= '1' when cnt_int < unsigned(duty) else '0';

end Behavioral;
