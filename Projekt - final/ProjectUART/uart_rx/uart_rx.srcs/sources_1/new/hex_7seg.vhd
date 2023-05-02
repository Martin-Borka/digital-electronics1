library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex_7seg is
    Port ( blank : in STD_LOGIC;
           hex : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end hex_7seg;

----architecture body for seven-segment display decoder

architecture Behavioral of hex_7seg is

begin
  --------------------------------------------------------
  -- p_7seg_decoder:
  -- A combinational process for 7-segment display (Common
  -- Anode) decoder. Any time "hex" or "blank" is changed,
  -- the process is "executed". Output pin seg(6) controls
  -- segment A, seg(5) segment B, etc.
  --     segment A
  --      | segment B
  --      |  | segment C
  --      +-+|  |   ...   segment G
  --        ||+-+          |
  --        |||            |
  -- seg = "0000001"-------+
  --
  -- Display is clear/blank if signal blank = 1.
  --------------------------------------------------------

  p_7seg_decoder : process (blank, hex) is

  begin

    if (blank = '1') then
      seg <= "1111111";     -- Blanking display
    else

      case hex is

        when '0' =>

          seg <= "0000001"; -- 0

        when others =>

          seg <= "1001111"; -- 1

      end case;

    end if;

  end process p_7seg_decoder;

end architecture behavioral;


-- end Behavioral;
