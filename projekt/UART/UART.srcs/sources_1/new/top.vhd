----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2023 10:18:44
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
  port (
    JD1       : in    std_logic;
    CLK100MHZ : in    std_logic; --! Main clock
    CA        : out   std_logic; --! Cathod A
    CB        : out   std_logic; --! Cathod B
    CC        : out   std_logic; --! Cathod C
    CD        : out   std_logic; --! Cathod D
    CE        : out   std_logic; --! Cathod E
    CF        : out   std_logic; --! Cathod F
    CG        : out   std_logic; --! Cathod G
    AN        : out   std_logic_vector(7 downto 0); --! Common anode signals to individual displays
    BTNC      : in    std_logic; --! Synchronous reset
    LED       : out   std_logic_vector(7 downto 0)
  );
end entity top;

architecture behavioral of top is

  -- No internal signals are needed today:)

begin

    UART_rx : entity work.UAR
    port map (
      clk      => CLK100MHZ,
      rst      => BTNC,
      gotten   => JD1,

      s_out(7) => LED(7),
      s_out(6) => LED(6),
      s_out(5) => LED(5),
      s_out(4) => LED(4),
      s_out(3) => LED(3),
      s_out(2) => LED(2),
      s_out(1) => LED(1),
      s_out(0) => LED(0)
      

      -- DIGITS
      --dig(4 downto 0) => AN(4 downto 0)
    );

    --AN <= b"0000_0000";


end architecture behavioral;
