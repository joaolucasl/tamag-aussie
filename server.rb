require 'sinatra'
require './config/db.rb'

get '/hi' do
  "Hello World!"
end

get '/user' do
  "User Page"
end

