--------------------------------------------------------------------------------
-- File:     fan_control.vhd
-- Design:   STROB
-- Author:   Shvetsov Sergey
-- Company:  Laser System LTD.
-- Version:  1.1 beta
-- Begin:    14.04.2021
-- Read license.txt for more informations.
--------------------------------------------------------------------------------
--  Управление кулером.
--------------------------------------------------------------------------------
-- 600Hz - максимальная частота импульсов от датчика кулера
-- Тогда при максимальной скорости получаем значение 1000/600 ~= 600 
-- Значени 255 получам при скорости меньшей  
-- Максимальное значение счетчика = (REF_FREQ*AVRS)/MAX_TACH 
-- Для максимального значения 256 AVRS =  256*MAX_TACH/REF_FREQ = 2560/6 ~= 427
-- При этом для REF_FREQ=1KHz время измерения будет ~0.43 секунды.
--------------------------------------------------------------------------------
   
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.ALL;

entity fan_control is
generic  (
        MAX_TACH : integer := 600;                  -- Максимальная частота датчика кулера.
--        REF_FREQ : integer := 1000;                 -- Частота clk_ref
		FREQ     : integer := 100000000;            --  		        
        AVRS     : integer := 427                   -- Число циклов clk_ref для измерения.
         );
	Port (	
		nrst 	 : in  std_logic;					--
        mclk	 : in  std_logic;				    -- Тактовая частота	
--        clk_ref  : in  std_logic;					--

		fan_tach : in  std_logic;					-- 600Hz fan speed sensor.
		fan_pwm  : out std_logic;					-- Выход ШИМ на кулер.

		data_in  : in  std_logic_vector(7 downto 0);-- Значение ШИМ. 0-кулер выключен 255-постоянно включен.  
		data_out : out std_logic_vector(7 downto 0) -- Текущее значени скорости вращения.
);
end fan_control;


architecture fan_control of fan_control is

--------------------------------------------------------------------------------
signal  time_div  : integer range 0 to (FREQ / 10000) + 1 := 0;
signal 	clk_ref   : std_logic;					--
--------------------------------------------------
signal 	ref_div   : integer  range  AVRS downto 0; 
signal  tach_cntr : integer  range  (AVRS*256) downto 0;
signal  pwm_cnt   : std_logic_vector(7 downto 0);
signal  overflow  : std_logic;
signal  xflg      : std_logic_vector(1 downto 0);
signal  xfan_pwm  : std_logic;

--------------------------------------------------------------------------------
begin


fan_pwm <= not xfan_pwm;

------------------------------- 
------ Генерируем опорную частоту 10KHz.
proc_div : process (nrst, mclk)
begin
	if	(nrst = '0') then
		time_div <= 0;
        clk_ref  <= '0';

	elsif (mclk'event and mclk='1') then
	
	   if not (time_div = 0) then	    	
	       time_div  <= time_div - 1;
	       
	       if (time_div = FREQ / 20000) then
	       	  clk_ref  <= '0';
	       end if;        	   

	   else
	       time_div  <= FREQ / 10000;
		   clk_ref  <= '1';	        
       end if;
      
    end if;      
end process proc_div;

--------------------------------------------------------------------------------
------ ШИМ управление кулером.
proc_pwm : process (nrst, clk_ref)
begin
	if (nrst = '0') then
        xfan_pwm <= '0';
        pwm_cnt <= (others => '0');
        
	elsif (clk_ref'event and clk_ref= '1') then
	   
	   pwm_cnt <= pwm_cnt + '1';           -- Счетчик крутится без остановки по кругу.
	   
	   if    (data_in = "00000000") then   -- Всегда выключен. 
	       xfan_pwm  <= '0';
	   elsif (data_in = "11111111") then   -- Всегда включен.
	       xfan_pwm  <= '1';
       elsif (pwm_cnt = "00000000") then   -- Включение ШИМ при нулевом значении.
	       xfan_pwm  <= '1';
	   elsif (pwm_cnt = data_in) then      -- Выключение ШИМ.
	       xfan_pwm  <= '0';
	   end if;
	   
	end if;
end process proc_pwm;

------ Подсчет периода измерения скорости вращения кулера.
proc_time : process (nrst, clk_ref, overflow, xflg)
begin
	if (nrst = '0') then
		ref_div <= 0;
        xflg(0) <= '0'; 

	elsif (clk_ref'event and clk_ref= '1') then
	
		if (ref_div = 0 ) then 
			ref_div  <= AVRS;
			
			if    (xflg(0) = xflg(1))  then     -- Не было ни одного входного импульса.
			    data_out <= (others => '0');			
			elsif (overflow = '1') then         -- Было переполнение счетчика импульсов.
                data_out <= (others => '1');
			else      
                data_out <= conv_std_logic_vector(tach_cntr, 8);
            end if;
            xflg(0)  <= not xflg(1);  
		else
			ref_div  <= ref_div - 1;
		end if;

	end if;
end process proc_time;

------ Подсчет импульсов датчика кулера на заданном периоде.
proc_calc : process (nrst, fan_tach, xflg)
begin
	if (nrst = '0') then
		tach_cntr <= 0;
        xflg(1)   <= '1'; 
        
	elsif (fan_tach'event and fan_tach= '1') then
	
		if (ref_div = 0 ) then 
		
		    if  not (xflg(0) = xflg(1))  then
		        overflow  <= '0';
		        tach_cntr <= 1;
		        		        
		    elsif (tach_cntr =(AVRS*256 - 1)) then 
				overflow  <= '1';
												
			else
			    tach_cntr <= tach_cntr + 1;
            end if;			     
		end if;

	end if;
end process proc_calc ;

end fan_control;
--------------------------------------------------------------------------------
