# Lab 2: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![tab1](https://user-images.githubusercontent.com/124675843/218859012-6559d02e-f5b0-48fe-84a5-022c557a77da.png)

   | b>a | 00 | 01 | 11 | 10 |
   | :-: | :-: | :-: | :-: | :-: |
   | 00 | 0 | 0 | 0 | 0 |
   | 01 | 1 | 0 | 0 | 0 |
   | 11 | 1 | 1 | 0 | 1 |
   | 10 | 1 | 1 | 0 | 0 |

   Less than:

   ![tab 2](https://user-images.githubusercontent.com/124675843/218859039-c22aa17d-3beb-4ade-b999-f7fbc5d9a6a6.png)


2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/comparator_min.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **237231**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "BCD_OF_YOUR_SECOND_LAST_ID_DIGIT"; -- Such as "0011" if ID = xxxx31
        s_a <= "BCD_OF_YOUR_LAST_ID_DIGIT";        -- Such as "0001" if ID = xxxx31
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0011, 0001 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/c8Di
