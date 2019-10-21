Input from scan "2 * 2" Output = ["2 * 2", 4]
Input from scan "2 * 2", "3 * 3" Output = [["2 * 2", 4], ["3 * 3", 9]]
Input from scan "1 * 1" "2 * 2", "3 * 3",  Output = [["1 * 1", 1],["2 * 2", 4], ["3 * 3", 9]]
Input from scan "1023" =  ["1023", 1023]
"1.5 * -1" -> ["1.5 * -1", -1.5] 
"2 - 3"	-> [“2 - 3", -1]
"5 / 4" -> ["5 / 4", 1.25]

"*" "/" "+" "-"

two decimal places accuracy

0.75 x 5 | 3/4 x 5

Only dealing with decimal places no fractions

if input is not a string = raise error "this is not a string please"

if no spaces input string = raise error "needs to be a valid mathmatical string separated by spaces"

Need to raise error for division by 0.
