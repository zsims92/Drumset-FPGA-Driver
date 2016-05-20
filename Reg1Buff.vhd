LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Reg1Buff IS
	PORT(
		data									:IN std_logic;
		enable, reset, Clock				:IN std_logic;
		output								:OUT std_logic
	);
END Reg1Buff;

ARCHITECTURE behavior OF Reg1Buff IS
BEGIN
	PROCESS(Clock, reset)
	BEGIN
		IF(reset = '1') THEN	
			output <= '0';
		ELSIF(rising_edge(Clock)) THEN
				output <= data;
		END IF;
	END PROCESS;
END behavior;