def guess_number secret_num
    number = 25
    # Code here
    puts "guess the number: "
    guess = gets.to_i
    if guess == secret_num
        puts "You got it!"
    elsif guess < secret_num
        puts "Guess was too low!"
    else
        puts "Guess was too high!"
    end
end

guess_number 13
