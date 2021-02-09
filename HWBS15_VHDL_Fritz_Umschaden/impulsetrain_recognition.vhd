----------------------------------------------------------------------------------
-- Company: ITI, Graz University of Technology
-- 
-- Create Date:    10/28/2008 
-- Design Name: 
-- Module Name:    impulsetrain_recognition - behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Impulse Train Recognition (01,11,10): Moore state machine incorporating 3 processes
entity impulsetrain_recognition is
port(clk		: in std_logic; 				
     reset	: in std_logic; 				
     en	 	: in std_logic; 				
     input	: in std_logic_vector(1 downto 0);	
     output	: out std_logic);				
end impulsetrain_recognition;

architecture behavior of impulsetrain_recognition is
-- insert state definitions here
type STATE is (TODO!!!)

begin
-- insert user code here

end;
