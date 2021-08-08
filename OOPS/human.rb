# The human class should have 4 attributes: strength, intelligence, stealth, and health.
# Give the human a default value of 3 for strength, stealth and intelligence. Health should have a default value of 100.

# Add a new method called attack, which when invoked, should attack another object (i.e., decrease its health) if the object it is attacking inherits from the Human class. Hint: you can check ancestors of a object by using .class.ancestors
class Human
    attr_accessor :strengh, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(something)
        if something.class.ancestors.include? Human
            something.health -= 10
            true
        else
            false
        end
    end
end

# mo = Human.new
# curly = Human.new
# puts curly.health
# mo.attack(curly)
# puts curly.health

# p "Human class"