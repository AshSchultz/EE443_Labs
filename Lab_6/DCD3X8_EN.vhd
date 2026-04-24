library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DCD3X8_EN is
  port (
    S  : in std_logic_vector(2 downto 0);
    EN : in std_logic;
    D  : out std_logic_vector(7 downto 0)
  );
end entity DCD3X8_EN;
architecture behavior of DCD3X8_EN is
  component DCD3x8 is
    port (
      S : in std_logic_vector(2 downto 0);
      D : out std_logic_vector(7 downto 0)
    );
  end component DCD3x8;

  signal output : std_logic_vector(7 downto 0);

begin

  dcd : DCD3X8
  port map
  (
    S,
    output
  );
  process (EN, output) is
  begin
    if EN = '1' then
      D <= output;
    else
      D <= "00000000";
    end if;
  end process;

end architecture;