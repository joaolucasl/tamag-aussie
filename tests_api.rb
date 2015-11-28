#Test da APIS

require_relative 'api/places'
require_relative 'classes/location'

here = Location.new(-27.4667, 153.0333)

health = rate(here, 'hospital')
education = rate(here, 'university')

puts "Health :   #{health}"
puts "Education: #{education}"
