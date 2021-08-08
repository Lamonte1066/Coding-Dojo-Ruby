require_relative 'human'
require_relative 'ninja'
# require_relative 'samurai'
class Wizard < Human
    # Wizard should have a default health of 50 and intelligence of 25
    # Wizard should have a method called heal, which when invoked, heals the Wizard by 10
    # Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20
    def initialize
        super()
        @health = 50
        @intelligence = 25
    end
    def heal
        @health += 10
        self
    end
    def fireball(opponent)
        opponent.health -= 20
        self
    end
end

# p "Wizard class"
sam = Wizard.new

puts "Sam's health is #{sam.health}"
