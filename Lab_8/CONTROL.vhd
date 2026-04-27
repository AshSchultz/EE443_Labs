library ieee;
use ieee.std_logic_1164.all;

entity CONTROL is
  port (
    INS_OP         : in std_logic_vector(3 downto 0);
	 ZERO				 : in STD_LOGIC;
    RegDst			 : OUT STD_LOGIC;
	 Jump				 : OUT STD_LOGIC;
	 Branch			 : OUT STD_LOGIC;
	 MemRead			 : OUT STD_LOGIC;
	 MemtoReg			 : OUT STD_LOGIC;
	 MemWrite			 : OUT STD_LOGIC;
	 ALUSrc			 : OUT STD_LOGIC;
	 RegWrite			 : OUT STD_LOGIC;
	 ALUCon			 : OUT STD_LOGIC;
	 ALUOp			 : OUT std_logic_vector(2 downto 0);
	 PCEnable		: OUT std_logic
  );
end CONTROL;

architecture behavior of CONTROL is
begin
	
	PCEnable <= '1';
	
	process(INS_OP, ZERO) is
	begin
		case INS_OP is
		when x"0" => -- add, or, and, sub, slt
			(RegDst, RegWrite) <= STD_LOGIC_VECTOR'("11");
			(Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, ALUCon) <= STD_LOGIC_VECTOR'("0000000");
			ALUOp <= STD_LOGIC_VECTOR'("000");
		when x"B" => -- lw
			(MemtoReg, RegWrite, MemRead, ALUSrc, ALUCon) <= STD_LOGIC_VECTOR'("11111");
			(RegDst, Jump, Branch, MemWrite) <= STD_LOGIC_VECTOR'("0000");
			ALUOp <= STD_LOGIC_VECTOR'("010");
      when x"F" => -- sw
				(ALUSrc, ALUCon, MemWrite) <= STD_LOGIC_VECTOR'("111");
				(RegDst, Jump, Branch, RegWrite, MemRead, MemtoReg) <= STD_LOGIC_VECTOR'("000000");
				ALUOp <= STD_LOGIC_VECTOR'("010");
      when x"4" => -- beq
				Branch <= ZERO;
				ALUCon <= '1';
				(ALUSrc, RegDst, Jump, RegWrite, MemRead, MemtoReg, MemWrite) <= STD_LOGIC_VECTOR'("0000000");
				ALUOp <= STD_LOGIC_VECTOR'("110");
      when x"2" => -- j
				Jump <= '1';
				(ALUCon, ALUSrc, RegDst, RegWrite, MemRead, MemtoReg, MemWrite, Branch) <= STD_LOGIC_VECTOR'("00000000");
				ALUOp <= STD_LOGIC_VECTOR'("000");
      when others =>
				(ALUCon, Jump, ALUSrc, RegDst, RegWrite, MemRead, MemtoReg, MemWrite, Branch) <= STD_LOGIC_VECTOR'("000000000");
				ALUOp <= STD_LOGIC_VECTOR'("000");
		end case;

	end process;

end architecture;
