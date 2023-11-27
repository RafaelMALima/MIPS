library ieee;
use ieee.std_logic_1164.all;

entity UC_ULA is
  port ( ulaOp : in std_logic_vector(1 downto 0);
         funct : in std_logic_vector(5 downto 0);
         ULACtrl : out std_logic_vector(3 downto 0)
  );

end entity;

architecture comportamento of UC_ULA is

  signal saidaDecoderUlaFunct : std_logic_vector(2 downto 0);
  signal saidaDecoderUlaOpcode : std_logic_vector(2 downto 0); 

begin

  ULACtrl <= "0000" when (ulaOp = "10" and funct = "100100") else
             "0001" when (ulaOp = "10" and funct = "100101") else
             "0010" when (ulaOp = "10" and funct = "100000") else
             "0110" when (ulaOp = "10" and funct = "100010") else
             "0111" when (ulaOp = "10" and funct = "101010") else
             "1101" when (ulaOp = "10" and funct = "100111") else
             "0110" when ulaOp = "01" else
				 "0010";



end architecture;
