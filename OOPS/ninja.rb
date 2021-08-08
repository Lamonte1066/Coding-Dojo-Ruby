require_relative 'human'
require_relative 'wizard'
require_relative 'samurai'
class Ninja
    # Ninja should have a default stealth of 175
    # Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10
    # Ninja should have a get_away method which, when invoked, decreases its health by 15
    def initialize
        super()
        @stealth = 175
    end
    def steal(opponent)
        opponent.health -= 10
        @health += 10
        self
    end
    def get_away
        @health -= 15
        self
    end
end

# p "Ninja class"
bob_the_ninja = Ninja.new

# p "Bob"