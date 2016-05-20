LIBRARY ieee;
USE ieee.std_logic_1164.all;

 
 ENTITY lab7_task1 is
	port(
	A, B, Cin : in STD_LOGIC;
	S, Cout : out STD_LOGIC
	);
	end lab7_task1;
	
ARCHITECTURE behavior OF lab7_task1 IS

	BEGIN
		S <= (A XOR B) XOR Cin;
		Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);
	END behavior;