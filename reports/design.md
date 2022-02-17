<!--
    File: design.md
    Creator: Ernest M Duckworth IV
    Created: Thursday Feb 17 2022 at 10:40:03 AM
    For: HW3
    Description: Design file for HW3
-->
# HW3 Design
- Modify HW2
- Instead of using WEXITSTATUS use pipe with shared memory

## Starter.c 
### Description 
- Create child proces to spawn `Reader.c`
- After `Reader.c` has returned creates shared memory segment for 
   - Lucas
   - HarmonicSeries
   - HexagonalSeries
- Then it forks 3 times (*one for each process*)
- When all 3 return it prints their statements (wait for all to return before printing results)

### Plan
- Enter main with **1** arg (file name)
- Create pipe for `Reader.c`
- Execute `Reader.c` and *wait* for return
- Read value from pipe, print it
- Calculate maximum prime number between 2 and N (return value from `Reader.c`)
- Create 3 shared memory pipes
- Pass the prime number into all 3 children programs 
- Wait for them to return and print their results
- end program



## Reader.c
### Description 
- takes 1 arg as input, must be file name
- return to `Starter.c` the sum of all the lines in the file via pipe
   - Read each line keep a running sum
- Close write end of pipe and exit program

### Plan 
- Enter


## Remaining files
### Description 
> `Lucas.c`, `HarmonicSeries.c` and `HexagonalSeries.c`
- Do as they did in HW2 but use shared memory for return
- Should run concurrently not sequentially
   - Run all at the same time
