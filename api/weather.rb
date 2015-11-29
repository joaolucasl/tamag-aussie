require 'forecast_io'
require 'pp'
require_relative '../classes/location'
require_relative '../helpers/helpers'

def get_weather(location)
  key = get_key "forecast_io"
  ForecastIO.api_key = key
  return ForecastIO.forecast(location.lat, location.lng)["currently"]
end
