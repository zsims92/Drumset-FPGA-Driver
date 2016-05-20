LIBRARY ieee;
use ieee.std_logic_1164.all;


Entity ioMux IS
	PORT
	(
		sel								: IN STD_logic_vector(2 downto 0);
		timerStatus						: IN std_logic;
		switches, buttons				: in std_logic_vector(15 downto 0);
		dataOut    			 			: OUT std_logic_vector(15 downto 0)	
	); 
	
END ioMux;


ARCHITECTURE design OF ioMUX is
BEGIN
	WITH sel select dataOUT <=
		switches when "001",
		buttons when "010",
		"000000000000000" & timerStatus when "100",
		"000000000000000" & timerStatus when others;
		
END design;