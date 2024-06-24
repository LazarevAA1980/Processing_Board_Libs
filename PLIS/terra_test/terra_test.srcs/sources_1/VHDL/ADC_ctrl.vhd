--------------------------------------------------------------------------------
-- File:     ADC_K5101HB04FI
-- Design:   STROB-1
-- Author:   Shvetsov Sergey
-- Company:  
-- Version:  1.1 beta
-- Begin:    23.06.22
-- Read license.txt for more informations.
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.ALL;

---------------------------------------------------------------------------------
entity ADC_K5101HB04FI is
  port    (
		nrst	 : in  std_logic;               -- Reset.
		mclk 	 : in  std_logic;		        -- Internal clocking 
        
        data     : in  std_logic_vector(15 downto 0);
        
        clk_p    : in  std_logic;               --
        clk_n    : in  std_logic;               --
        ADC_OR   : in  std_logic;               --
        ADC_DCO  : in  std_logic               --                    

  );
end ADC_K5101HB04FI;

architecture ADC_ctrl of ADC_K5101HB04FI is

-- ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
-- ATTRIBUTE X_INTERFACE_PARAMETER OF out_adc_clk: SIGNAL IS "XIL_INTERFACENAME out_adc_clk, FREQ_HZ=62500000, PHASE=0.000";

-------------------------------------------------------------------------------
--signal  rst_i   : std_logic := '0';             -- Active-high reset input.
             --

begin

-------------------------------------------------------------------------------
--rst_i <= not nrst;

------

end architecture ADC_ctrl;
-------------------------------------------------------------------------------
