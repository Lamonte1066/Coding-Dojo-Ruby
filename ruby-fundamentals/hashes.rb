
h = {:first_name => "Coding", :last_name => "Dojo"}
puts h
puts h.empty?
puts "has key?"
puts h.has_key?(:last_name)
puts h.has_value?("Dojo")

h.delete(:last_name)
puts "deleted"
puts h

puts h.empty?
puts h.has_key?("first_name")
puts "has key?"
puts h.has_key?(:last_name)
puts h.has_value?("Dojo")