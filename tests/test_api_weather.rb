require_relative 'api/weather'

here = Location.new(-27.4667, 153.0333)

weather = get_weather here

puts weather["summary"]
