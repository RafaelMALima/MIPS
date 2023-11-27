library ieee;
use ieee.std_logic_1164.all;

entity unidadeDeControle is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(9 downto 0)
  );
end entity;

architecture comportamento of unidadeDeControle is

  constant TIPO_R  : std_logic_vector(5 downto 0) := "000000";
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ  : std_logic_vector(5 downto 0) := "000100";
  constant JMP  : std_logic_vector(5 downto 0) := "000010";

  begin
  
  saida <= "0110100000" when opcode = TIPO_R else
           "0011000010" when opcode = LW else
           "0001000001" when opcode = SW else
           "0000010100" when opcode = BEQ else
			  "1000000000" when opcode = JMP else
			  "0000000000";

end architecture;
