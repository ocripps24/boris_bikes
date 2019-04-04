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
    fail "Dock is full" if @bike_list.count >= 20
    @bike_list << bike
  end

end
