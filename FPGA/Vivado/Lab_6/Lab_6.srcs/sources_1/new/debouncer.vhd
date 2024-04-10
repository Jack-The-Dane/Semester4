----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 02:53:24 PM
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

entity debouncer is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           inp : in STD_LOGIC;
           outp : out STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is
    type    STATE_TYPE      is  (s_rst, edge, high);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_rst;
    signal  next_state      :   STATE_TYPE  :=  s_rst;
begin
    ------------------------------------------------------------------------------
    current_state_logic :   process(clk, rst)
    ------------------------------------------------------------------------------
    -- Current state logic process. Here goes state transitions and state 
    -- transition assignments. Clock and reset sensitive.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        if (rst = '1') then
            current_state   <=  s_rst;              -- Reset state
            -- Put additional reset assignments here

        elsif (rising_edge(clk)) then
            current_state   <=  next_state;         -- State transition (only valid from process exit)

            case current_state is                   -- State transition assignments
                when s_rst =>                       -- Remember all possibilities
                    case next_state is              -- Use others and null for default
                        when s_rst =>
                            null;
                        when others =>
                            null;
                    end case;
                when others =>
                    null;
            end case;

        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_rst =>
                next_state  <=  s_rst;              -- Use conditional logic based on input signals
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process next_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    output_logic        :   process(current_state)
    ------------------------------------------------------------------------------
    -- Output logic process. Here goes output assignments. 
    -- Sensitive to state change only.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all states
            when s_rst =>                           
                null;                               -- Remember to assign all signals
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process output_logic;
    ------------------------------------------------------------------------------
end Behavioral;
