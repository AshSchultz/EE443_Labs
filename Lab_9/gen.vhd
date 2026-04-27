ENTITY gen IS
PORT(genout:	 	OUT bit_vector(0 TO 6);
	 sel: 			IN bit_vector(3 DOWNTO 0));
END gen;

ARCHITECTURE g of gen IS
BEGIN
process (sel)
-- 
begin
	CASE sel IS                -- abcdefg
		WHEN "0000" => genout <= "0000001";	
		WHEN "0001" => genout <= "1001111";
		WHEN "0010" => genout <= "0010010";	
		WHEN "0011" => genout <= "0000110";
		WHEN "0100" => genout <= "1001100";
		WHEN "0101" => genout <= "0100100";
		WHEN "0110" => genout <= "0100000";
		WHEN "0111" => genout <= "0001111";
		WHEN "1000" => genout <= "0000000";	
		WHEN "1001" => genout <= "0000100";
		WHEN "1010" => genout <= "0001000";	
		WHEN "1011" => genout <= "1100000";
		WHEN "1100" => genout <= "0110001";
		WHEN "1101" => genout <= "1000010";
		WHEN "1110" => genout <= "0110000";
		WHEN "1111" => genout <= "0111000";
	END CASE;

end process;
END  ARCHITECTURE g;