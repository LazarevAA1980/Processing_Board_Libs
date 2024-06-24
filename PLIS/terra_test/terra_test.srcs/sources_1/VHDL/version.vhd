--------------------------------------------------------------------------------
-- File:     version.vhd
-- Design:   STROB-1
-- Author:   Shvetsov Sergey
-- Company:  Laser System LTD.
-- Version:  1.1 beta
-- Begin:    24.04.2020
-- Read license.txt for more informations. 
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.ALL;
--library unisim;
--use unisim.vcomponents.all;

-------------------------------------------------------------------------------
entity version is
 generic (
		VERSION_HI  : integer := 1;
		VERSION_LO  : integer := 3;
		VERSION_SUB : integer := 7;				
		FREQ        : integer := 100000000 		
		 );
 port   (
        nrst        : in  std_logic;
        mclk        : in  std_logic;    
            
        test_in     : in  std_logic_vector(7 downto 0);
        test_out    : out std_logic_vector(7 downto 0);

        test_led    : out std_logic_vector(7 downto 0);          
        adc_led     : out std_logic;                  
        clk_1KHZ    : out std_logic;
        
		dinp        : in  std_logic_vector(31 downto 0);    		
        time_ms     : out std_logic_vector(31 downto 0);                               
		vout        : out std_logic_vector(31 downto 0)
  );
end version;

architecture version of version is

--------------------------------------------------
signal  time_div  : integer range 0 to (FREQ / 1000) + 1 := 0;
signal  time_cntr : std_logic_vector(31 downto 0)        := (others => '0');

-------------------------------------------------------------------------------

begin
-------------------------------------------------------------------------------

vout(7 downto 0)   <= conv_std_logic_vector(VERSION_HI, 8);
vout(15 downto 8)  <= conv_std_logic_vector(VERSION_LO, 8);
vout(23 downto 16) <= conv_std_logic_vector(VERSION_SUB, 8);

vout(31 downto 24) <= test_in;
test_out <= dinp(7 downto 0);
test_led <= dinp(15 downto 8);
adc_led  <= dinp(31);
time_ms  <= time_cntr;

-------------------------------------------------------------------------------
-------------------------------
proc_count : process (nrst, mclk)
begin
	if	(nrst = '0') then
		time_div  <= 0;
		time_cntr <= (others => '0');
		clk_1KHZ  <= '0';

	elsif (mclk'event and mclk='1') then
	
	   if not (time_div = 0) then	    	
	       time_div  <= time_div - 1;
	       
	       if (time_div = FREQ / 2000) then
	       	  clk_1KHZ  <= '0';
	       end if;        	   
	           
	   else     
	       time_div  <= FREQ / 1000;
	       time_cntr <= time_cntr + '1';
		   clk_1KHZ  <= '1';	        
       end if;
      
    end if;      
end process proc_count;

end architecture version;
-------------------------------------------------------------------------------
