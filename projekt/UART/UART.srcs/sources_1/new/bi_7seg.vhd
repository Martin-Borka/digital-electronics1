library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bi_7seg is
    Port ( blank : in STD_LOGIC;
           bi : in STD_LOGIC_VECTOR (1 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end bi_7seg;

architecture behavioral of bi_7seg is

begin


  p_7seg_decoder : process (blank, bi) is

  begin

    if (blank = '1') then
      seg <= "1111111";     -- Blanking display
    else

      case bi is

        when "0" =>
          seg <= "0000001"; -- 0

        when "1" =>
          seg <= "1001111"; -- 1
        
        when others =>
          seg <= "1111111"; -- blank

      end case;

    end if;
  end process p_7seg_decoder;
end architecture behavioral;
