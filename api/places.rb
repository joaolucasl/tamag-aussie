# Uses 'places' key, from Google Places

require 'google_places'
require 'json'
require 'pp'
require_relative '../helpers/helpers'
require_relative '../classes/greatCircle'

def rate (here, type)
  key = get_key 'google'

  results = GooglePlaces::Client.new(key)
          .spots(here.lat, here.lng, :types => type)[0]

  there = Location.new(results.lat, results.lng)

  distance = GreatCircle.distance(here.lat, here.lng, there.lat, there.lng, unit='KM')

  pp results.name
  puts "\tDistance: #{distance}"
  return rater(distance)

end
