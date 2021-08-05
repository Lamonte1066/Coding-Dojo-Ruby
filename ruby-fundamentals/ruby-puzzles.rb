=begin
Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
=end

x = [3,5,1,2,7,9,8,13,25,32]
def gt10 (arr)
    sum = 0
    arr.each {|i| "#{sum += i}"}
    puts "sum is #{sum}"
    y = []
#    arr.each {|i| y << i if i > 10}
    arr.reject {|i| y << i if i > 10}
#    puts y
    return y
end

# puts gt10 x

=begin
Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
=end

names = ["John", "KB", "Oliver", "Cory"," Matthew", "Christopher"]

def shuffle (arr)
    puts arr.shuffle
    y = []
    arr.each {|i| y << i if i.length > 5}
    return y
end

# puts shuffle names


=begin
Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
=end

arr = Array("a".."z").to_a
# puts arr
def letters(arr)
    puts arr = arr.shuffle
    puts arr.at(0)
    puts arr.at(25)
end

# puts letters arr

=begin
Generate an array with 10 random numbers between 55-100.
=end
arr = []
def randarray(arr)
    (1..10).each {|i| arr << rand(55..100)}
    # puts rand(55..100)
    return arr
end

# puts randarray(arr)

=begin
Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
=end

arr = []
def randsortarray(arr)
    (1..10).each {|i| arr << rand(55..100)}
    # puts arr
    return arr.sort
end

# puts randsortarray(arr)

=begin
Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

Generate an array with 10 random strings that are each 5 characters long
=end

def randomstring
    x = []
    (1..5).each { x.push (1..5).map { (65+rand(26)).chr }.join }
    # x.push (1..5).map { (65+rand(26)).chr }.join
    # x = Array(1..10)
    # x.each {|i| x << (1..5).map { (65+rand(26)).chr }.join}
    puts x

end

randomstring
