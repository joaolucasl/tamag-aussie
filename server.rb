require 'sinatra'
require_relative 'classes/location'
require_relative 'classes/pet'
require './config/db.rb'

error = 'ERROR suckaaaa'

here = Location.new(-27.4667, 153.0333)

pet = Pet.new('Bobby', here, here)

get '/hi' do
  "Hello World!"
end

get '/user' do
  "User Page"
end

get '/pet' do
  begin
    pet.update_all
    @pet = pet
    erb :pet
  rescue
    error
  end
end

get '/user' do
  begin
    erb :user
  rescue
    error
  end
end
