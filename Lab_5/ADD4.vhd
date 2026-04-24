LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ADD4 is
    port (
        Ai, Bi : IN  STD_LOGIC_VECTOR(3 downto 0); 
        C0 : IN  STD_LOGIC;                    
        S : OUT STD_LOGIC_VECTOR(3 downto 0);
		  C4 : OUT STD_LOGIC;
		  OVER : OUT STD_LOGIC
    );
end ADD4;

architecture behavior of ADD4 is
	
	signal G, P, C : STD_LOGIC_VECTOR(3 downto 0);
	signal COUT : STD_LOGIC;
	
begin
	
	gen_prop_loop : for i in 0 to 3 generate
		G(i) <= Ai(i) AND Bi(i);
		P(i) <= Ai(i) XOR Bi(i);
	end generate gen_prop_loop;
	
	C(0) <= C0;
	C(1) <= G(0) OR (P(0) AND C0);
	carry_loop : for ii in 1 to 2 generate
		C(ii + 1) <= G(ii) OR (P(ii) AND C(ii));
	end generate carry_loop;
	
	COUT <= G(3) OR (P(3) AND C(3));
	
	C4 <= COUT;
	
	sum_loop : for j in 0 to 3 generate
		S(j) <= P(j) XOR C(j);
	end generate sum_loop;

	OVER <= COUT XOR C(3);

end behavior;
	
	