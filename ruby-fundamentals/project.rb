class Project
    # your code here
    attr_accessor :name, :description
    def initialize(name, description)
        @name = name
        @description = description
    end
    def elevator_pitch
        puts "#{@name}, #{@description}"
    end
end
Project1 = Project.new("Project1", "Description 1")
puts Project1.name # => "Project 1"
puts Project1.description
Project1.elevator_pitch

