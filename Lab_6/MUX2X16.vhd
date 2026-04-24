library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX2X16 is
  port (
    IN1, IN2 : in std_logic_vector(15 downto 0);
    CONTROL  : in std_logic;
    OUT16B   : out std_logic_vector(15 downto 0)
  );
end entity MUX2X16;

architecture behavior of MUX2X16 is
begin

  process (CONTROL, IN1, IN2)
  begin
    if CONTROL = '1' then
      OUT16B <= IN2;
    else
      OUT16B <= IN1;
    end if;
  end process;

end architecture behavior;