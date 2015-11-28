class Location
  def initialize(lat, long)
    @lat = lat
    @long = long
  end

  def lat
    @lat
  end

  def lat=(new_lat)
    @lat = new_lat
  end

  def long
    @long
  end

  def lat=(new_long)
    @long = new_long
  end

end
