#Test da APIS

require_relative 'api/places'
require_relative 'classes/location'
require_relative 'classes/pet'

here = Location.new(-27.4667, 153.0333)

pet = Pet.new('Bobby', here, here)

pet.print_stats

pet.update_all

pet.print_stats
