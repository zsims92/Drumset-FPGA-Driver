LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity lab7_task2 IS

	PORT(
		A, B : IN STD_LOGIC_VECTOR(32 downto 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(32 downto 0);
		Out14, Out15 : OUT STD_LOGIC
		);
	END lab7_task2;
	
ARCHITECTURE behavior OF lab7_task2 IS
	COMPONENT lab7_task1
		PORT (
			A, B, Cin : IN STD_LOGIC;
			S, Cout : OUT STD_LOGIC
			);
	END COMPONENT;
	
	SIGNAL Cout0, Cout1, Cout2, Cout3, Cout4, Cout5, Cout6, Cout7, Cout8, Cout9, Cout10, Cout11, Cout12, Cout13, Cout14, Cout15, Cout16 : std_logic;
	SIGNAL Cout17, Cout18, Cout19, Cout20, Cout21, Cout22, Cout23, Cout24, Cout25, Cout26, Cout27, Cout28, Cout29, Cout30, Cout31, Cout32 : std_logic;
BEGIN

sim0: lab7_task1 PORT MAP(A(0), B(0), Cin, S(0), Cout0);
sim1: lab7_task1 PORT MAP(A(1), B(1), Cout0, S(1), Cout1);
sim2: lab7_task1 PORT MAP(A(2), B(2), Cout1, S(2), Cout2);
sim3: lab7_task1 PORT MAP(A(3), B(3), Cout2, S(3), Cout3);
sim4: lab7_task1 PORT MAP(A(4), B(4), Cout3, S(4), Cout4);
sim5: lab7_task1 PORT MAP(A(5), B(5), Cout4, S(5), Cout5);
sim6: lab7_task1 PORT MAP(A(6), B(6), Cout5, S(6), Cout6);
sim7: lab7_task1 PORT MAP(A(7), B(7), Cout6, S(7), Cout7);
sim8: lab7_task1 PORT MAP(A(8), B(8), Cout7, S(8), Cout8);
sim9: lab7_task1 PORT MAP(A(9), B(9), Cout8, S(9), Cout9);
sim10: lab7_task1 PORT MAP(A(10), B(10), Cout9, S(10), Cout10);
sim11: lab7_task1 PORT MAP(A(11), B(11), Cout10, S(11), Cout11);
sim12: lab7_task1 PORT MAP(A(12), B(12), Cout11, S(12), Cout12);
sim13: lab7_task1 PORT MAP(A(13), B(13), Cout12, S(13), Cout13);
sim14: lab7_task1 PORT MAP(A(14), B(14), Cout13, S(14), Cout14);
sim15: lab7_task1 PORT MAP(A(15), B(15), Cout14, S(15), Cout15);
sim16: lab7_task1 PORT MAP(A(16), B(16), Cout15, S(16), Cout16);
sim17: lab7_task1 PORT MAP(A(17), B(17), Cout16, S(17), Cout17);
sim18: lab7_task1 PORT MAP(A(18), B(18), Cout17, S(18), Cout18);
sim19: lab7_task1 PORT MAP(A(19), B(19), Cout18, S(19), Cout19);
sim20: lab7_task1 PORT MAP(A(20), B(20), Cout19, S(20), Cout20);
sim21: lab7_task1 PORT MAP(A(21), B(21), Cout20, S(21), Cout21);
sim22: lab7_task1 PORT MAP(A(22), B(22), Cout21, S(22), Cout22);
sim23: lab7_task1 PORT MAP(A(23), B(23), Cout22, S(23), Cout23);
sim24: lab7_task1 PORT MAP(A(24), B(24), Cout23, S(24), Cout24);
sim25: lab7_task1 PORT MAP(A(25), B(25), Cout24, S(25), Cout25);
sim26: lab7_task1 PORT MAP(A(26), B(26), Cout25, S(26), Cout26);
sim27: lab7_task1 PORT MAP(A(27), B(27), Cout26, S(27), Cout27);
sim28: lab7_task1 PORT MAP(A(28), B(28), Cout27, S(28), Cout28);
sim29: lab7_task1 PORT MAP(A(29), B(29), Cout28, S(29), Cout29);
sim30: lab7_task1 PORT MAP(A(30), B(30), Cout29, S(30), Cout30);
sim31: lab7_task1 PORT MAP(A(31), B(31), Cout30, S(31), Cout31);
sim32: lab7_task1 PORT MAP(A(32), B(32), Cout31, S(32), Cout32);
Out14 <= Cout31;
Out15 <= Cout32;
END behavior;