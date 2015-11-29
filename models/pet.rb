require_relative '../config/db.rb'
require_relative '../api/places'
require_relative '../api/weather'
require_relative '../classes/location'


require 'digest'

DB.Connect()

class Pet < ActiveRecord::Base
  after_initialize :set_default_values

  attr_accessor   :current
  attr_reader   :weather


  def set_default_values
    self.species ||= "Ibis"
    self.name ||= "Dummy Name"
    self.health ||= 80
    self.intelligence ||= 80
    self.happiness ||= 80
    self.hunger ||= 80
    self.coins ||= 80
  end

  def update_all
    self.update_health
    self.update_intelligence
    self.update_hunger
    self.update_coins
  end

  def update_health
    self.health += rate(@current, 'hospital')
    if self.health > 100
      self.health = 100
    end
  end

  def update_intelligence
    self.intelligence += rate(@current, 'university')
    if self.intelligence > 100
      self.intelligence = 100
    end
  end

  def update_hunger
    self.hunger += rate(@current, 'hunger')
    if self.hunger > 100
      self.hunger = 100
    end
  end

  def update_coins

  end

  def update_weather
    @weather = get_weather @current
  end

  def print_stats
    puts "#{self.name} has these stats:"
    puts "\tHealth:       #{self.health}"
    puts "\tIntelligence: #{self.intelligence}"
    puts "\tHappines:     #{self.happiness}"
    puts "\tHunger:       #{self.hunger}"
    puts "\tCoins:        #{self.coins}"
    puts "\tWeather:      #{@weather["summary"]}"
    puts ""
  end

end

