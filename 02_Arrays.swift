/*
***************************************************************************************
  [Arrays]
***************************************************************************************
*/

/*
[Code Exercise] Arrays
Given the array of numbers in exercise.swift. Create another array called computedNumbers. computedNumbers should multiply each element in the numbers array by the next element. The last element should be multiplied by the first.

e.g. If numbers was equal to: [3, 1, 4, 2]
computedNumbers should equal [3 x 1, 1 x 4, 4 x 2, 2 x 3] which is: [3, 4, 8, 6]
Replace the comments with your code.

// HINT: In Swift, multiplication is done with the asterisk symbol. e.g. 3 x 4 would be: 3 * 4

// IMPORTANT:
// 1. You are not allowed to type the numbers 45, 73, 195 or 53 in your solution code.
// 2. computedNumbers should be created as a variable named exactly as you see in the print statement. Do not change the rest of the code.
*/

var numbers = [45, 78, 198, 63]
var computedNumbers = [numbers[0] * numbers[1], numbers[1] * numbers[2], numbers[2] * numbers[3], numbers[3] * numbers[0] ] // [3285, 14235, 10335, 2385]

print(computedNumbers)
