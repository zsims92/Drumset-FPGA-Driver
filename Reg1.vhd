LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Reg1 IS
	PORT(
		data									:IN std_logic;
		enable, reset, Clock				:IN std_logic;
		output								:OUT std_logic
	);
END Reg1;

ARCHITECTURE behavior OF Reg1 IS
BEGIN
	PROCESS(Clock, reset)
	BEGIN
		IF(reset = '1') THEN	
			output <= '0';
		ELSIF(rising_edge(Clock)) THEN
			IF(enable = '1') THEN
				output <= data;
			END IF;
		END IF;
	END PROCESS;
END behavior;