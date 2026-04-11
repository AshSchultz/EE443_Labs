LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity MUX4X4 is
    port (
        IN1, IN2, IN3, IN4 : in std_logic_vector(3 downto 0);
        CONTROL : in std_logic_vector(1 downto 0);
        OUT4B : out std_logic_vector(3 downto 0) 
    );
end entity MUX4X4;
architecture behavior of MUX4X4 is
    
begin
    process (CONTROL, IN1, IN2, IN3, IN4)
    begin
		case CONTROL is
			when "00" =>
				OUT4B <= IN1;
			when "01" =>
				OUT4B <= IN2;
			when "10" =>
				OUT4B <= IN3;
			when others =>
				OUT4B <= IN4;
		end case;
			
    end process;
    
end architecture behavior;