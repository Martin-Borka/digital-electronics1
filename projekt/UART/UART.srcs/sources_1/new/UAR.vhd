library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;


entity UAR is
  port (
    gotten  : in    std_logic;
    clk     : in    std_logic;
    rst     : in    std_logic;
    s_out   : out    std_logic_vector(3 downto 0)
    --seg     : out   std_logic_vector(6 downto 0);
    --dig     : out   std_logic_vector(3 downto 0)
  );
end entity UAR;

----------------------------------------------------------
-- Architecture declaration for display driver
----------------------------------------------------------

architecture behavioral of UAR is

  -- Internal clock enable
  signal sig_en : std_logic;
  -- Internal 2-bit counter for multiplexing 4 digits
  signal sig_cnt : std_logic_vector(3 downto 0);
  -- Internal 8-bit value for 7-segment decoder
  --signal sig_hex : std_logic_vector(3 downto 0);

  constant baud_rate : integer := 9600; -- Baud rate in bps
  constant clock_freq : integer := 100000000; -- Clock frequency in Hz
  constant divisor : integer := clock_freq / baud_rate;
begin

  clk_en : entity work.clock_enable
    generic map (
      -- FOR SIMULATION, KEEP THIS VALUE TO 1
      -- FOR IMPLEMENTATION, CALCULATE VALUE: 250 ms / (1/100 MHz)
      -- 1   @ 10 ns
      g_max => integer(clock_freq / (integer(baud_rate) * 16)) - 1
    )
    port map (
      clk => clk,
      rst => rst,
      ce  => sig_en
    );

  --------------------------------------------------------
  -- Instance (copy) of cnt_up_down entity performs
  -- a 2-bit down counter
  --------------------------------------------------------
  bin_cnt : entity work.cnt_up_down
    generic map (
      g_CNT_WIDTH => 4
    )
    port map (
       clk => clk,
       rst => rst,
       en => sig_en,
       cnt_up => '0',
       cnt => sig_cnt
    );
    
    --hex7seg : entity work.hex_7seg
    --port map (
    --  blank => rst,
    --  hex   => sig_hex,
    --  seg   => seg
    --);


    s_read : process (clk) is
  begin

    if (rising_edge(clk)) then
      if (rst = '1') then
        s_out     <= "00000000";
      else
       
        
        case sig_cnt is

          when "1001" =>
            --nic
            
          when "1000" =>
            s_out(7)     <= gotten;          
            --dig     <= "01111111";

          when "0111" =>
            s_out(6)     <= gotten;
            --dig     <= "10111111";
            
          when "0110" =>
            s_out(5)     <= gotten;
            --dig     <= "11011111";
          
          when "0101" =>
            s_out(4)     <= gotten;
            --dig     <= "11101111";
          
          when "0100" =>
            s_out(3)     <= gotten;
            --dig     <= "11110111";
          
          when "0011" =>
            s_out(2)     <= gotten;
            --dig     <= "11111011";
          
          when "0010" =>
            s_out(1)     <= gotten;
            --dig     <= "11111101";
          
          when "0001" =>
            s_out(0)     <= gotten;
            --dig     <= "11111110";

          when others =>
            if (gotten = '0') then
        sig_cnt     <= "1001";
        else
        -- nic
        end if;

        end case;
       
      end if;
    end if;



  end process s_read;



end architecture behavioral;
