library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DCD5X32 is
  port (
    ADDR : in std_logic_vector(4 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
end entity DCD5X32;
architecture behavior of DCD5X32 is
  component DCD3x8_EN is
    port (
      S  : in std_logic_vector(2 downto 0);
      EN : in std_logic;
      D  : out std_logic_vector(7 downto 0)
    );
  end component DCD3x8_EN;

  signal en_0 : std_logic;
  signal en_1 : std_logic;
  signal en_2 : std_logic;
  signal en_3 : std_logic;

begin

  en_0 <= (not ADDR(4)) and (not ADDR(3));
  en_1 <= ADDR(3) and (not ADDR(4));
  en_2 <= (not ADDR(3)) and ADDR(4);
  en_3 <= ADDR(3) and ADDR(4);
  dcd_0 : DCD3X8_EN
  port map
  (
    ADDR(2 downto 0),
    en_0,
    DOUT(7 downto 0)
  );

  dcd_1 : DCD3X8_EN
  port map
  (
    ADDR(2 downto 0),
    en_1,
    DOUT(15 downto 8)
  );

  dcd_2 : DCD3X8_EN
  port map
  (
    ADDR(2 downto 0),
    en_2,
    DOUT(23 downto 16)
  );

  dcd_3 : DCD3X8_EN
  port map
  (
    ADDR(2 downto 0),
    en_3,
    DOUT(31 downto 24)
  );

end architecture;