----------------------------------------------------------------------------------
-- Company: ITI, Graz University of Technology
-- 
-- Create Date:    10/28/2008 
-- Design Name: 
-- Module Name:    simple_alu - behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

entity simple_alu is
    Port (in1		: in std_logic_vector (1 downto 0);
          in2		: in std_logic_vector (1 downto 0);
          alumode		: in std_logic_vector (1 downto 0);
          outseg	: out std_logic_vector (6 downto 0);
          outled	: out std_logic_vector (3 downto 0));
end simple_alu;


architecture behavior of simple_alu is
  begin
  simple_alu : process(in1, in2, alumode)
  variable result_internal : integer;
  variable in1_internal, in2_internal : integer;
  begin
    in1_internal := conv_integer(in1);
    in2_internal := conv_integer(in2);
    
    -- insert user code here
     if alumode = ("00") then   
		  result_internal := (in1_internal + in2_internal);  --add
		
	  elsif alumode = ("01") then   
		  result_internal := (in1_internal * in2_internal);  --mult
		  
	  elsif alumode = ("10") then   
		   result_internal :=  conv_integer(in1 and in2);  --and
	  elsif alumode = ("11") then   
			result_internal := conv_integer(in1 or in2);  --or
	  end if;

	outled <= std_logic_vector(to_unsigned(result_internal, 4)); 
	
	if result_internal = 9 then
		outseg <= "0000100";
			elsif result_internal = 8 then
		outseg <= "0000000";
			elsif result_internal = 7 then
		outseg <= "0001110";
			elsif result_internal = 6 then
		outseg <= "0100000";
			elsif result_internal = 5 then
		outseg <= "0100100";
			elsif result_internal = 4 then
		outseg <= "1101100";
			elsif result_internal = 3 then
		outseg <= "0000110";
			elsif result_internal = 2 then
		outseg <= "0010010";
			elsif result_internal = 1 then
		outseg <= "1001111";
		   elsif result_internal = 0 then
		outseg <= "0000001";
	end if;
	
-- end case;
  end process;  
end;

