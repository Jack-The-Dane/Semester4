----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2021 10:18:33 AM
-- Design Name: 
-- Module Name: fsm_template - Behavioral
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

entity fsm_template is
    port (
        --  Std ports:
        clk     :   in  STD_LOGIC;
        rst     :   in  STD_LOGIC;
        inp : in std_logic;
        outp : out std_logic
    );
end fsm_template;

architecture Behavioral of fsm_template is
    type    STATE_TYPE      is  (s_rst, s_busy, s_idle);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_rst;
    signal  next_state      :   STATE_TYPE  :=  s_rst;
    signal busy_cnt : unsigned(3 downto 0) := "0000";
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
                when s_rst =>
                    busy_cnt <= "0000";                       -- Remember all possibilities
                    case next_state is              -- Use others and null for default
                        when s_rst =>
                            null;
                        when others =>
                            null;
                    end case;
                when s_busy =>
                    if (next_state = s_idle) then
                        busy_cnt <= "0000";
                    else 
                        busy_cnt <= busy_cnt + 1;
                    end if;
                when s_idle =>
                    busy_cnt <= "0000";
                when others =>
                    null;
            end case;

        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state, busy_cnt, inp)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_rst =>
                next_state  <=  s_busy;   
            when s_busy =>
                if(busy_cnt = "1000") then
                    next_state <= s_idle;
                end if;    
            when s_idle =>
                if(inp = '1') then
                    next_state <= s_busy;  
                end if;     -- Use conditional logic based on input signals
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
                null;   
            when s_busy =>
                outp <= '1';
            when s_idle =>
                outp <= '0';                            -- Remember to assign all signals
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process output_logic;
    ------------------------------------------------------------------------------

end Behavioral;
