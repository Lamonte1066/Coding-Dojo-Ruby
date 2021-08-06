=begin
Default health of 150 (inherited)
A method called pet, which when invoked, increases the health by 5
A method called walk, which when invoked, decreases the health by 1
A method called run, which when invoked, decreases the health by 10
A method called display_health (inherited)
=end

require_relative 'mammal'

class Dog < Mammal
    def pet
        @health += 5
        self
    end
    def walk
        @health -= 1
        self
    end
    def run
        @health -= 10
        self
    end
end

=begin
Have an instance of the Dog class walk 3 times, run twice, pet once and then display its health
=end
dawggie = Dog.new
dawggie.walk.walk.walk.display_health
dawggie.walk.walk.walk.run.run.pet.display_health