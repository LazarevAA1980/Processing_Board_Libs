--------------------------------------------------------------------------------
-- File:     CAM_ctrl
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
entity CAM_ctrl is
  port    (
		nrst	 : in  std_logic;               -- Reset.
		mclk 	 : in  std_logic;		        -- Internal clocking 
        
        md_P : in  std_logic_vector(3 downto 0);
        md_N : in  std_logic_vector(3 downto 0);
        mc_P : in  std_logic;               --
        mc_N : in  std_logic                --                
  );
end CAM_ctrl;



architecture CAM_ctrl of CAM_ctrl is

-- ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
-- ATTRIBUTE X_INTERFACE_PARAMETER OF out_adc_clk: SIGNAL IS "XIL_INTERFACENAME out_adc_clk, FREQ_HZ=62500000, PHASE=0.000";

-------------------------------------------------------------------------------
--signal  rst_i   : std_logic := '0';             -- Active-high reset input.
             --

begin

-------------------------------------------------------------------------------
--rst_i <= not nrst;

------

end architecture CAM_ctrl;
-------------------------------------------------------------------------------
