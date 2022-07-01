----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:05 07/01/2022 
-- Design Name: 
-- Module Name:    TBmemorydemo - behavior 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Ejercicio 02 Para la leccion 1

ENTITY TBmemorydemo IS
END TBmemorydemo;
 
ARCHITECTURE behavior OF TBmemorydemo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memorydemo
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memorydemo PORT MAP (
          salida => salida,
          direccion => direccion
        );

    -- Clock process definitions 

   -- Stimulus process
   stim_proc: process
   begin		
       wait for 100 ns;	
		direccion <= "AA";
		
		wait for 100 ns;
		direccion <= "BB";
		
		wait for 100 ns;
		direccion <= "CC";
		
		wait for 100 ns;
		direccion <= "DD";
     wait;
   end process;

END;
