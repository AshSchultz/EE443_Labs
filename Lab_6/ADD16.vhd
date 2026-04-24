library ieee;
use ieee.std_logic_1164.all;

entity ADD16 is
  port (
    Ai, Bi : in std_logic_vector(15 downto 0);
    S      : out std_logic_vector(15 downto 0)
  );
end ADD16;

architecture behavior of ADD16 is

  component ADD4 is
    port (
      Ai, Bi : in std_logic_vector(3 downto 0);
      C0     : in std_logic;
      S      : out std_logic_vector(3 downto 0);
      C4     : out std_logic;
      OVER   : out std_logic
    );
  end component;

  signal couts     : std_logic_vector(3 downto 0);
  signal overflows : std_logic_vector(3 downto 0);

begin

  add_1 : ADD4
  port map
  (
    Ai(3 downto 0),
    Bi(3 downto 0),
    '0',
    S(3 downto 0),
    couts(0),
    overflows(0)
  );

  add_2 : ADD4
  port map
  (
    Ai(7 downto 4),
    Bi(7 downto 4),
    couts(0),
    S(7 downto 4),
    couts(1),
    overflows(1)
  );

  add_3 : ADD4
  port map
  (
    Ai(11 downto 8),
    Bi(11 downto 8),
    couts(1),
    S(11 downto 8),
    couts(2),
    overflows(2)
  );

  add_4 : ADD4
  port map
  (
    Ai(15 downto 12),
    Bi(15 downto 12),
    couts(2),
    S(15 downto 12),
    couts(3),
    overflows(3)
  );

end architecture;