-- <File header>
-- Project
--    pAVR (pipelined AVR) is an 8 bit RISC controller, compatible with Atmel's
--    AVR core, but about 3x faster in terms of both clock frequency and MIPS.
--    The increase in speed comes from a relatively deep pipeline. The original
--    AVR core has only two pipeline stages (fetch and execute), while pAVR has
--    6 pipeline stages:
--       1. PM    (read Program Memory)
--       2. INSTR (load Instruction)
--       3. RFRD  (decode Instruction and read Register File)
--       4. OPS   (load Operands)
--       5. ALU   (execute ALU opcode or access Unified Memory)
--       6. RFWR  (write Register File)
-- Version
--    0.32
-- Date
--    2002 August 07
-- Author
--    Doru Cuturela, doruu@yahoo.com
-- License
--    This program is free software; you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation; either version 2 of the License, or
--    (at your option) any later version.
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--    You should have received a copy of the GNU General Public License
--    along with this program; if not, write to the Free Software
--    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-- </File header>



-- <File info>
-- This is a utility for easely setting up Program Memory in the main testing
--    architecture.
-- This is just a testing utility, NOT actually a test.
-- </File info>



-- <File body>
library work;
use work.std_util.all;
library ieee;
use ieee.std_logic_1164.all;



package test_pavr_util is

   -- Function for writing Program Memory
   function pm_setup(pm_addr: natural; pm_val: natural) return std_logic_vector;

end;



package body test_pavr_util is

   -- Function for writing Program Memory
   function pm_setup(pm_addr: natural; pm_val: natural) return std_logic_vector is
      variable rv: std_logic_vector(22+16-1 downto 0);
   begin
      rv := int_to_std_logic_vector(pm_addr, 22) & int_to_std_logic_vector(pm_val, 16);
      return rv;
   end;

end;
-- </File body>
