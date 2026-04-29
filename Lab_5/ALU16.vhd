LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ALU16 is
    port (
        A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		  SEL : IN STD_LOGIC_VECTOR(2 downto 0);
		  F : OUT STD_LOGIC_VECTOR(15 downto 0);
		  COUT, OVERFLOW, ZERO : OUT STD_LOGIC
    );
end entity ALU16;
architecture behavior of ALU16 is

component ALU4 is
    port (
        A, B : IN STD_LOGIC_VECTOR(3 downto 0);
		  LESS, CIN : IN STD_LOGIC;
		  SEL : IN STD_LOGIC_VECTOR(2 downto 0);
		  F : OUT STD_LOGIC_VECTOR(3 downto 0);
		  COUT, OVERFLOW, SET, ZERO : OUT STD_LOGIC
    );
end component ALU4;
	
	signal c : STD_LOGIC_VECTOR(4 downto 0);
	signal s : STD_LOGIC_VECTOR(3 downto 0);
	signal z : STD_LOGIC_VECTOR(3 downto 0);
	
begin
	
	c(0) <= SEL(2);
	
	alu0 : ALU4
		port map(
			A(3 downto 0),
			B(3 downto 0),
			s(3),
			c(0),
			SEL,
			F(3 downto 0),
			c(1),
			open,
			s(0),
			z(0)
		);
		
	alu1 : ALU4
		port map(
			A(7 downto 4),
			B(7 downto 4),
			'0',
			c(1),
			SEL,
			F(7 downto 4),
			c(2),
			open,
			s(1),
			z(1)
		);
	
	alu2 : ALU4
		port map(
			A(11 downto 8),
			B(11 downto 8),
			'0',
			c(2),
			SEL,
			F(11 downto 8),
			c(3),
			open,
			s(2),
			z(2)
		);
		
	alu3 : ALU4
		port map(
			A(15 downto 12),
			B(15 downto 12),
			'0',
			c(3),
			SEL,
			F(15 downto 12),
			c(4),
			OVERFLOW,
			s(3),
			z(3)
		);
		
		COUT <= c(4);
		
		ZERO <= (z(0) AND z(1) AND z(2) AND z(3));

end behavior;