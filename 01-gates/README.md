# Lab 1: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![CodeCogsEqn](https://user-images.githubusercontent.com/124675843/217301425-41af4461-d74e-4c4f-a855-ac33decfde72.svg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= ((not(b_i) nand (a_i)) nand (not(c_i and not(b_i) and a_i))); -- MODIFY THIS FUNCTION
    f_nor_o  <= ((not(b_i or not(a_i)) or not(not(c_i) or b_i or not(a_i))));  -- MODIFY THIS FUNCTION
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124675843/217294469-1e39d2db-db91-4ad1-8c7b-e647e90a007d.png)

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/dEsn
