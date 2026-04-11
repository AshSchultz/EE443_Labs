LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ALU4 is
    port (
        A, B : IN STD_LOGIC_VECTOR(3 downto 0);
		  LESS, CIN : IN STD_LOGIC;
		  SEL : IN STD_LOGIC_VECTOR(2 downto 0);
		  F : OUT STD_LOGIC_VECTOR(3 downto 0);
		  COUT, OVERFLOW, SET, ZERO : OUT STD_LOGIC
    );
end entity ALU4;
architecture behavior of ALU4 is
	type std_logic_aov is array (0 to 3) of STD_LOGIC_VECTOR(3 downto 0);
	signal result_to_mux : std_logic_aov;
	signal inv_to_add : STD_LOGIC_VECTOR(3 downto 0);
	signal res_from_mux : STD_LOGIC_VECTOR(3 downto 0);
	
	component MUX4X4 is
    port (
        IN1, IN2, IN3, IN4 : in std_logic_vector(3 downto 0);
        CONTROL : in std_logic_vector(1 downto 0);
        OUT4B : out std_logic_vector(3 downto 0) 
    );
	 end component;
	 
	 component ADD4 is
    port (
        Ai, Bi : IN  STD_LOGIC_VECTOR(3 downto 0); 
        C0 : IN  STD_LOGIC;                    
        S : OUT STD_LOGIC_VECTOR(3 downto 0);
		  C4 : OUT STD_LOGIC;
		  OVER : OUT STD_LOGIC
    );
	end component;
	
	component BWAND4 is
    port (
        Aj, Bj : IN  STD_LOGIC_VECTOR(3 downto 0);                 
        Result : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
	end component;
	
	component BWOR4 is
    port (
        Ak, Bk : IN  STD_LOGIC_VECTOR(3 downto 0);                 
        Res : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
	end component;
	
	component PINV4 is
    port (
        I : IN  STD_LOGIC_VECTOR(3 downto 0);
		  St : IN STD_LOGIC;
        Rt : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
	end component;
begin

	inverter: PINV4
		port map(
			B,
			SEL(2),
			inv_to_add
		);
	
	adder: ADD4
		port map(
			A,
			inv_to_add,
			CIN,
			result_to_mux(2),
			COUT,
			OVERFLOW
		);
	
	ander: BWAND4
		port map(
			A,
			B,
			result_to_mux(0)
		);
	
	bitwor: BWOR4
		port map(
			A,
			B,
			result_to_mux(1)
		);
		
	result_to_mux(3) <= (LESS, others => '0');
	
	mux: MUX4X4
		port map(
			result_to_mux(0),
			result_to_mux(1),
			result_to_mux(2),
			result_to_mux(3),
			SEL(1 downto 0),
			res_from_mux
		);
	
	SET <= result_to_mux(2)(3);
		
	ZERO <= NOT (res_from_mux(0) OR res_from_mux(1) OR res_from_mux(2) OR res_from_mux(3));
	
	F <= res_from_mux;

end architecture behavior;