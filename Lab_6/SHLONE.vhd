library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SHLONE is
  port (
    DIN  : in std_logic_vector(15 downto 0);
    DOUT : out std_logic_vector(15 downto 0)
  );
end entity SHLONE;
architecture behavior of SHLONE is
begin
  DOUT(0) <= '0';
  shift_loop : for i in 14 downto 0 generate
    DOUT(i + 1) <= DIN(i);
  end generate;
end architecture;