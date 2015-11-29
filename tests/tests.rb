require_relative '../classes/location'
require_relative '../classes/pet'

puts "\nLocation test:"

here = Location.new(-27.4667, 153.0333)

puts "Lat:  #{here.lat}"
puts "Long: #{here.lng}"

puts "\nPet test:"

pet = Pet.new('Bobby', here, here)
puts "Name: #{pet.name}"
puts "Home: #{pet.home.lat}"
puts "    : #{pet.home.lng}"
