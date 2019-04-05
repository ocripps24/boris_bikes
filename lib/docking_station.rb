require_relative 'bike'

class DockingStation

  attr_reader :bike_list

  def initialize
    @bike_list = []
  end

  def release_bike
    fail "Dock is empty" if @bike_list.empty?
    @bike_list.pop
  end

  def dock_bike(bike)
    fail "Dock is full" if full?
    @bike_list << bike
  end

  def full?
    @bike_list.count >= 20
  end


end

# Define a full? predicate method that uses some of the dock code to return true or false depending on whether the station is full or not

#  Rewrite the guard condition of your dock method to incorporate your new full? method

#  Do the same for release_bike, using an empty? method

#  Use the private keyword to ensure these methods cannot be called from 'outside' instances of the DockingStation class.
