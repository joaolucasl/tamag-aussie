#Test da APIS

require_relative 'api/health'
require_relative 'classes/location'

here = Location.new(-27.4667, 153.0333)
health = rate_health(here)

puts "Health : #{health}"
