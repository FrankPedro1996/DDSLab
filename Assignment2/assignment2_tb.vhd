LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Assignment2_tb IS
END Assignment2_tb;

ARCHITECTURE behavior OF Assignment2_tb IS

--DUV
COMPONENT up_down_counter
PORT(
A : IN std_logic;
B : IN std_logic;
Q : OUT std_logic;
QN : OUT std_logic
);
END COMPONENT;

--Inputs
signal A : std_logic := '0';
signal B : std_logic := '0';
--Outputs
signal Q : std_logic := '0';
signal QN : std_logic := '0';
 
BEGIN
 
DUV: entity work.Assignment2(behavioral) 
PORT MAP (
A => A,
B => B,
Q => Q,
QN => QN
);
 
stimulus: process
begin

A <= '1';
B <= '0';
wait for 10 ns;

A <= '0';
wait for 10 ns;

B <= '1';
wait for 10 ns;

B <= '0';
wait for 10 ns;

A <= '1';
B <= '1';
wait for 10 ns;

wait;
end process stimulus;
 
END;
