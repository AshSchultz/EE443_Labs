library ieee;
use ieee.std_logic_1164.all;

entity PC is
  port (
    PCIN         : in std_logic_vector(15 downto 0);
    CLK, EN, RST : in std_logic;
    PCOUT        : out std_logic_vector(15 downto 0)
  );
end PC;

architecture behavior of PC is
  component REG16 is
    port (
      R      : in std_logic_vector(15 downto 0);
      ENABLE : in std_logic;
      Clock  : in std_logic;
      Q      : out std_logic_vector(15 downto 0)
    );
  end component REG16;
  
  signal to_pc : std_logic_vector(15 downto 0);
  
begin
  rst_gen: for i in 15 downto 0 generate
  	  to_pc(i) <= PCIN(i) and (not RST);
  	end generate rst_gen;	

    reg : REG16
        port map(
            to_pc,
            EN,
            CLK,
            PCOUT
        );
end architecture;
