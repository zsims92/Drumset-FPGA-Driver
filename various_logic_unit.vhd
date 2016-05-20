LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity various_logic_unit is
	port(	
		input1, input2 : IN std_logic;
		adderInput : IN std_logic_vector(32 downto 0);
		N,Z,V,C: OUT std_logic
	);
	
	end various_logic_unit; 
	
ARCHITECTURE behavior OF various_logic_unit IS

	signal temp: std_logic;
	
	BEGIN
	
		N <= adderInput(32) and ('1');
		temp <= (adderInput(0) or adderInput(1) or 
				adderInput(2) or adderInput(3) or
				adderInput(4) or adderInput(5) or
				adderInput(6) or adderInput(7) or
				adderInput(8) or adderInput(9) or
				adderInput(10) or adderInput(11) or
				adderInput(12) or adderInput(13) or
				adderInput(14) or adderInput(15) or
				adderInput(16) or adderInput(17) or
				adderInput(18) or adderInput(19) or
				adderInput(20) or adderInput(21) or
				adderInput(22) or adderInput(23) or
				adderInput(24) or adderInput(25) or
				adderInput(26) or adderInput(27) or
				adderInput(28) or adderInput(29) or
				adderInput(30) or adderInput(31) or
				adderInput(32)
		);
		
		Z <= not temp;
		
		V <=  adderInput(0) or adderInput(1);
		C <= input1 xor input2;
		
	END behavior;