--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:40:48 11/20/2019
-- Design Name:   
-- Module Name:   C:/Users/amr rashed/Desktop/vhdl codes/pronew/rom_test1.vhd
-- Project Name:  pronew
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
entity example_file_io_tb is
 
end example_file_io_tb;
 
 
architecture behave of example_file_io_tb is
 

 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_1
    PORT(
         addr : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         data : OUT  std_logic_vector(47 downto 0)
        );
    END COMPONENT;
    
  file file_VECTORS : text;
  file file_RESULTS : text;
   --Inputs
   signal addr : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal data : std_logic_vector(47 downto 0);

   -- Clock period definitions
   constant clk_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_1 PORT MAP (
          addr => addr,
          clk => clk,
          data => data
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable v_TERM1 : std_logic_vector(15 downto 0);
    
     
  begin
 
    file_open(file_VECTORS, "input_vectors.txt",  read_mode);
    file_open(file_RESULTS, "output_results.txt", write_mode);
 
    while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      read(v_ILINE, v_TERM1);
      
      
 
      -- Pass the variable to a signal to allow the ROM to use it
      addr <= v_TERM1;
     
 
      wait for 50 ns;
 
      hwrite(v_OLINE,data,right,48);--hexadecimal write
      writeline(file_RESULTS, v_OLINE);
    end loop;
 
    file_close(file_VECTORS);
    file_close(file_RESULTS);
     
    wait;
  end process;

END;
