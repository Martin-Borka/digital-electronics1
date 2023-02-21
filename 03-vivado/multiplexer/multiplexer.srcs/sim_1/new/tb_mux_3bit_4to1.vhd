----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2023 12:38:49 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
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

entity tb_mux_3bit_4to1 is
--  Port ( );
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is
    signal    s_sel_i         : in  std_logic_vector(2 - 1 downto 0);
    signal    s_a_i           : in  std_logic_vector(3 - 1 downto 0);
    signal    s_b_i           : in  std_logic_vector(3 - 1 downto 0);
    signal    s_c_i           : in  std_logic_vector(3 - 1 downto 0);
    signal    s_d_i           : in  std_logic_vector(3 - 1 downto 0);
    signal    s_f_o           : in  std_logic_vector(3 - 1 downto 0);
begin


end Behavioral;
