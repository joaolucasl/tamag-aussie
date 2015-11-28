require_relative '../api/places'

class Pet
  attr_reader   :name
  attr_reader   :health
  attr_reader   :intelligence
  attr_reader   :happiness
  attr_reader   :hunger
  attr_reader   :coins
  attr_reader   :home
  attr_reader   :current

  def initialize(name, home, current)
    @name = name
    @health = 80
    @intelligence = 80
    @happiness = 80
    @hunger = 80
    @coins = 80
    @home = home
    @current = current
  end

  def update_all
    self.update_health
    self.update_intelligence
    self.update_hunger
    self.update_coins
  end

  def update_health
    @health += rate(current, 'hospital')
    if @health > 100
      @health = 100
    end
  end

  def update_intelligence
    @intelligence += rate(current, 'university')
    if @intelligence > 100
      @intelligence = 100
    end
  end

  def update_hunger
    @hunger += rate(current, 'hunger')
    if @hunger > 100
      @hunger = 100
    end
  end

  def update_coins

  end

  def print_stats
    puts "#{@name} has these stats:"
    puts "\tHealth:       #{@health}"
    puts "\tIntelligence: #{@intelligence}"
    puts "\tHunger:       #{@hunger}"
    puts "\tCoins:        #{@coins}"
    puts ""
  end

end
