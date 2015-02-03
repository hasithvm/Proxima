----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:11 02/03/2015 
-- Design Name: 
-- Module Name:    toplevel - impl -----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toplevel is
    Port ( spi_in : in  STD_LOGIC_VECTOR (2 downto 0);
           spi_cs_in : in  STD_LOGIC_VECTOR (2 downto 0);
           spi_out : out  STD_LOGIC_VECTOR (2 downto 0);
           spi_cs : out  STD_LOGIC_VECTOR (6 downto 0);
			  ctl_en: in std_logic);
end toplevel;

architecture impl of toplevel is

begin
process (ctl_en, spi_in, spi_cs_in) begin
if (ctl_en='1') then
 spi_out <=  spi_in;
 case spi_cs_in is
	when "000" => spi_cs <= "1111111";
	when "001" => spi_cs <= "1111110";
	when "010" => spi_cs <= "1111101";
	when "011" => spi_cs <= "1111011";
	when "100" => spi_cs <= "1110111";
	when "101" => spi_cs <= "1101111";
	when "110" => spi_cs <= "1011111";
	when "111" => spi_cs <= "0111111";
	when others => spi_cs <= "1111111";
 end case;
elsif (ctl_en='0') then
 spi_out <= "ZZZ";
 spi_cs <= "1111111";
end if;
end process;
end impl;

