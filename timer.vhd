LIBRARY ieee;
use ieee.std_logic_1164.all;


Entity timer IS
	PORT
	(
		clk, enable, reset,restart : IN std_logic;
		ccr0 								: in std_logic_vector(31 downto 0);
		ti0        			 			: OUT std_logic	
	); 
	
END timer;



ARCHITECTURE behavior of timer IS
    
signal counter_0  : std_logic_vector( 32 downto 0) := (others => '0');
signal counter_0_h: std_logic_vector( 32 downto 0) := (others => '0');
signal counter_0_l: std_logic_vector( 32 downto 0) := (others => '0');
signal counter_0_sel  : std_LOGIC_VECTOR (1 downto 0)  := (others => '0');
signal alu_out    : std_logic_vector( 32 downto 0) := (others => '0');
signal alu_out_l  : std_logic_vector( 32 downto 0) := (others => '0');
signal alu_op     : std_logic_vector( 1  downto 0 ) := (others => '0');
signal alu_op_l   : std_logic_vector( 1  downto 0 ) := (others => '0');
signal dataa		: std_logic_vector( 32 downto 0) := (others => '0');
signal datab		: std_logic_vector( 32 downto 0) := (others => '0');
signal hV,hC,hN, hZ, lV,lZ,lC,lN     : std_logic; 

-- Import components
component falu
PORT
	(
		A, B : in std_logic_vector(32 downto 0);
		alu_op : in std_logic_vector(1 downto 0);
		A_inv, B_inv : in std_logic;
		alu_out : out std_logic_vector(32 downto 0);
		N,Z,V,C : out std_logic
	);
end component falu;
component mux2_32 
	PORT(
		d0,d1		:IN std_logic_vector(32 downto 0);
		
		sel			:IN std_logic_vector(1 downto 0);
		f			:OUT std_logic_vector(32 downto 0)
	);
END component;

BEGIN
	process(clk)
	begin
	if(reset = '1' OR restart = '1') THEN
		dataa <= "000000000000000000000000000000000";
		datab <= "000000000000000000000000000000000";
		alu_op <= "11";
		ti0 <= '0';
	elsif (reset = '0') then 
		if(rising_edge(clk) ) then
			if(enable = '1') then 
				alu_op <= "00"; --add counter ++
				dataa  <= counter_0;
				datab  <= "000000000000000000000000000000001";
				
				 if(hN = '1') then --set counter select 
					counter_0_sel <= "10";  -- if overflow reset counter
				 elsif (hN = '0') then 
					counter_0_sel <= "00";
				 elsif (reset = '1') then --reset's value
					counter_0_sel <= "10";
				 end if;
			end if; 
			
		elsif(falling_edge(clk)) then
			if(enable = '1') then 
				alu_op_l <= "01"; --Compare counter with ccr0
				if(hN = '1') then --If counter overflowed reset ti0
					ti0 <= '0';
				elsif(lN = '1') then --if ccr0 => counter_0 trigger ti0
					ti0 <= '1';
				end if; 
			end if;
			
		end if;
	end if;
	
	end process;

--falu : falu();
HighClock : falu PORT MAP(dataa, datab, alu_op, '0', '0', counter_0_h, hN, hZ, hV, hC );
LowClcok  : falu PORT MAP(counter_0, '0'&ccr0, alu_op, '1', '0', counter_0_l, lN, lZ, lV, lC );

countersim : mux2_32 PORT MAP(counter_0_h, counter_0_l, counter_0_sel, counter_0);

end behavior;