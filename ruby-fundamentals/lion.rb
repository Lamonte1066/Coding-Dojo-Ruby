require_relative 'mammal'

class Lion < Mammal
    def initialize
        # Have the default health be 170
        super
        @health = 170
    end
    def fly
        # Add a new method called fly, which when invoked, decreases the health by 10.
        @health -= 10
        self
    end
    def attack_town
        # Add a new method called attack_town, which when invoked, decreases the health by 50.
        @health -= 50
        self
    end
    def eat_humans
        # Add a new method called eat_humans, which when invoked, increases the health by 20.
        @health += 20
        self
    end
    def display_health
        print "This is a lion "
        super
    end
end

=begin
Have the Lion attack_town three times, eat_humans twice, fly twice, and have it display its health. When the Lion's display_health method is called have it say 'This is a lion` before it displays the default information (make sure you still call the parent's display_health function).
=end

Leo = Lion.new
Leo.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health