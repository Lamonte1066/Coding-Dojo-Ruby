class MathDojo
  # your code here
  attr_accessor :answer
  def initialize
    @answer = 0
  end

  def add *group
    for number in group
        if number.is_a? Fixnum
            @answer += number
        else
            number.each_index {|i| @answer += number[i]}
        end
    end
    self
  end

  def subtract *group
    for number in group
        if number.is_a? Fixnum
            @answer -= number
        else
            number.each_index {|i| @answer -= number[i]}
        end
    end
    self
  end
  
  def result
    puts @answer
  end
end

# challenge1 = MathDojo.new.add(2).add(2, 5).result 
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result 

# => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result 
# => 23.15