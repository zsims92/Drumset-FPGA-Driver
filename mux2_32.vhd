LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2_32 IS
	PORT(
		d0,d1		:IN std_logic_vector(32 downto 0);
		
		sel								:IN std_logic_vector(1 downto 0);
		f									:OUT std_logic_vector(32 downto 0)
	);
END mux2_32;

ARCHITECTURE behavior OF mux2_32 IS
BEGIN
	WITH sel SELECT
		f <= d0 WHEN "00",
			  d1 WHEN "01",
			  (others => '0') when "10",
			  (others => '1') when "11";
END behavior;