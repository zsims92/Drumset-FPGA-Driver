LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity falu is
PORT
	(
		A, B : in std_logic_vector(32 downto 0);
		alu_op : in std_logic_vector(1 downto 0);
		A_inv, B_inv : in std_logic;
		alu_out : out std_logic_vector(32 downto 0);
		N,Z,V,C : out std_logic
	);
end entity falu;

architecture behavior of falu is 

component mux4
	port(
		d0,d1,d2,d3 : in std_logic_vector (32 downto 0);
		sel : in std_logic_vector (1 downto 0);
		f : out std_logic_vector(32 downto 0)
	);
end COMPONENT; 

component mux2
	port(
		d0,d1 : IN std_logic_vector (32 downto 0);
		sel : in std_logic;
		f : out std_logic_vector (32 downto 0)
	);
end component;

component lab7_task2
	port(
		
		A, B : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
		Out14, Out15 : OUT STD_LOGIC
		
	
	);
end component;

component various_logic_unit
	port(
		input1, input2 : in std_logic;
		adderInput : in std_logic_vector(32 downto 0);
		N,Z,V,C : out std_logic
	
	
	);
end component;	

component not32 
	port(
		A : in std_logic_vector(32 downto 0);
		output : out std_logic_vector(32 downto 0)
	);
end component;





signal f0,f1,f2,s0, notA, notB, and0, or0, xor0 : std_logic_vector (32 downto 0);
signal out14, out15, input1, input2,abor : std_logic;



begin 

abor <= a_inv or b_inv;  

notASim : not32 port map (A, notA);
notBSim : not32 port map (B, notB);

mux2Sim0 : mux2 port map (A, notA , A_inv, f0);
mux2Sim1 : mux2 port map (B,notB, B_inv, f1);

lab7_task2Sim : lab7_task2 port map (f0, f1, abor, s0, out14, out15);
various_logic_unitSim : various_logic_unit port map (out14, out15, s0, N,Z,V,C);

mux4Sim : mux4 port map (and0, or0, xor0, s0, alu_op, alu_out);

end behavior;