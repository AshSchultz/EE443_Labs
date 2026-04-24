library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity INCTWO is
  port (
    A : in std_logic_vector(15 downto 0);
    F : out std_logic_vector(15 downto 0)
  );
end entity INCTWO;
architecture behavior of INCTWO is

  signal num_add    : std_logic_vector(15 downto 0);
  signal aluOutputs : std_logic_vector(2 downto 0);

  component ALU16 is
    port (
      A, B                 : in std_logic_vector(15 downto 0);
      SEL                  : in std_logic_vector(2 downto 0);
      F                    : out std_logic_vector(15 downto 0);
      COUT, OVERFLOW, ZERO : out std_logic
    );
  end component ALU16;

begin

  num_add <= (1 => '1', others => '0'); -- Add the number 2 in binary

  alu0 : ALU16
  port map
  (
    A,
    num_add,
    "010",
    F,
    aluOutputs(0),
    aluOutputs(1),
    aluOutputs(2)
  );

  aluOutputs <= (others => '0');

end architecture;
