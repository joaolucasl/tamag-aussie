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
    @health = 100
    @intelligence = 100
    @happiness = 100
    @hunger = 100
    @coins = 100
    @home = home
    @current = current
  end

end
