#description of the main program
this program finds the solution of the linear equation ax+b=0, where a and b numbers are written in the input file like this:
 num1 num2
 num1 num2
 ...
after the execution the answers will be store in the output file like this:
 answer1
 answer2
 ... 
NOTE: in my output and golden files all the floating point numbers which have more than 4 digits after point, the precision is set as 4
for example: if we have 23.345648 the answer will be 23.3456


#linear_test.tcl description
this test_file performs the following operations for every line in the input file:
reads two input numbers from the input file, solves the problem for that inputs, writes in the output file, 
compares the result value with the corresponding value in golden file and writes the appropriate message in the result file
If there is an input which is not a real number, in the output and golden files will be written "wrong input"


#files
 in this directory there are following files
* input.txt __ it is the file where our input values are written
* golden.txt __ it is the file where our correct answers are written
* linear_functions.tcl __it is the file where the problem_solver function and other related functions are written
* linear_test.tcl __ this file contains the operations of reading from the input file, solving and writing in the output file and the result file(testing)
* main.tcl __ this file contains the program which solves our main problem (without testing)

the files that will be generated are 
*output.txt__here result-values are written
*result.txt__here test results are written(test passed or not)

#to run the main program type in command line
 tclsh main.tcl
to clean the generated files type 
 rm output.txt


#to run the test type in command line
 tclsh linear_test.tcl
to clean the generated files type 
 rm output.txt result.txt
