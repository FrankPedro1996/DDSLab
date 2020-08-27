library ieee;
use ieee.std_logic_1164.all;

entity Assignment2 is
        port(
                A: in std_logic;
                B: in std_logic;
                Q: out std_logic;
                QN: out std_logic
            );  
end entity Assignment2;

architecture behavioral of Assignment2 is
signal iQ, iQN : std_logic := '0';
begin
        iQ <= A nor iQN; 
        iQN <= B nor iQ; 
        Q <= iQ; 
        QN <= iQN;
end architecture behavioral; 
