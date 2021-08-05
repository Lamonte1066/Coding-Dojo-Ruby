=begin 1 ----------------------------
Print 1-255
Write a program that would print all the numbers from 1 to 255. 
=end
# Code 1 ---------------
(1..255).each{|i| puts i}

for i in 1..255
    puts "#{i}"
end

=begin 2 ----------------------------
Print odd numbers between 1-255
Write a program that would print all the odd numbers from 1 to 255.
=end
# Code 2 ---------------
(1..255).each{|i| puts i if i.odd?}
puts "for"
for i in 1..255
    puts i if i.odd?
end

=begin 3 ----------------------------
Print Sum
Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:

New number: 0 Sum: 0
New number: 1 Sum: 1
New number: 2 Sum: 3
New number: 3 Sum: 6
...
New number: 255 Sum: __
Do NOT use an array to do this exercise.
=end
# Code 3 ---------------
sum = 0
(0..255).each {|i| puts "New number: #{i} Sum: #{sum += i}"}

=begin 4 ----------------------------
Iterating through an array
Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.
=end
# Code 4 ---------------
x = [1,3,5,7,9,13]
x.each {|i| puts i}

=begin 5 ----------------------------
Find Max
Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
=end
# Code 5 ---------------
x = [-3, -5, -7]
puts x.max
y = [5, -9, 8]
puts y.max
z = [9, 0, -4]
puts z.max

=begin 6 ----------------------------
Get Average
Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.
=end
# Code 6 ---------------
array1 = [2, 10, 3]
puts array1.reduce(:+) / array1.length.to_f

=begin 7 ----------------------------
Array with Odd Numbers
Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
=end
# Code 7 ---------------
y = []
(1..255).each {|i| y << i if i.odd?}
puts y

=begin 8 ----------------------------
Greater Than Y
Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
=end
# Code 8 ---------------
array1 = [1, 3, 5, 7]
y = 3
puts array1.count {|i| i > y}

=begin 9 ----------------------------
Square the values
Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
=end
# Code 9 ---------------
x = [1, 5, 10, -2]
puts x.map! {|i| i * i}

=begin 10 ----------------------------
Eliminate Negative Numbers
Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].
=end
# Code 10 ---------------
x = [1, 5, 10, -2]
puts x.each_index {|i| x[i] = 0 if x[i] < 0}

=begin 11 ----------------------------
Max, Min, and Average
Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.
=end
# Code 11 ---------------
x = [1, 5, 10, -2]
{ max: x.max, min: x.min, average: x.reduce(:+) / x.length.to_f }
puts x.max, x.min, x.reduce(:+) / x.length.to_f

=begin 12 ----------------------------
Shifting the Values in the Array
Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
=end
# Code 12 ---------------
x = [1, 5, 10, 7, -2]
x.rotate!(1)[x.length-1] = 0
puts x

=begin 13 ----------------------------
Number to String
Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].
=end
# Code 13 ---------------
x = [-1, -3, 2]
puts x.each_index {|i| x[i] = "Dojo" if x[i] < 0}