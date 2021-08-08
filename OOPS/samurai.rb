require_relative 'Human'
require_relative 'Wizard'
require_relative 'Ninja'
class Samurai
    # Samurai should have a default health of 200
    # Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0
    # Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health
    # Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are
    @@num_of_samurai = 0
    def initialize
        super()
        @health = 200
        @@num_of_samurai += 1
    end
    def death_blow(opponent)
        opponent.health = 0
        self
    end
    def meditate
        @health += 200
        self
    end
    def how_many
        p "The number of Samurai is #{@@num_of_samurai}"
    end
end

mo = Samurai.new
bob = Samurai.new
sam = Ninja.new
#p mo.health
# bob.death_blow(mo)
#p mo.health
