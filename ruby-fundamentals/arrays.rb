=begin
.at or .fetch
.delete
.reverse
.length
.sort
.slice
.shuffle
.join
.insert
values_at() -> returns an array with values specified in the param
e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
=end

dinos = ["Tyrannosaurus Rex","Triceratops","Stegasaurus","Pternodon"]

puts dinos.at(2)
puts dinos.fetch(1)

puts dinos.delete("Stegasaurus")
puts dinos

puts dinos.reverse

puts dinos.length
puts "Length of dinos is #{dinos.length}"

puts dinos.sort

puts dinos.slice(1)
puts dinos.shuffle
puts dinos.shuffle.join(', ')

puts dinos.insert(2,"Apatosaurus")
puts dinos
puts "values at"
puts dinos.values_at(1,2)


