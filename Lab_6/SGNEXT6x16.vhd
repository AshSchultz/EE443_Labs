library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SGNEXT6x16 is
  port (
    SIGN_IN   : in std_logic_vector(5 downto 0);
    EXTEN_OUT : out std_logic_vector(15 downto 0)
  );
end entity SGNEXT6x16;
architecture behavior of SGNEXT6x16 is

  signal ext_out : std_logic_vector(15 downto 0);

begin

  ext_out(5 downto 0) <= SIGN_IN(5 downto 0);

  process (SIGN_IN, ext_out) is
  begin
    if SIGN_IN(5) = '1' then
      ext_out(15 downto 6) <= (others => '1');
    else
      ext_out(15 downto 6) <= (others => '0');
    end if;
  end process;

  EXTEN_OUT <= ext_out;

end architecture;