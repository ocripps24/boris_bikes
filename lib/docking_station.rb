require_relative 'bike'

class DockingStation

  attr_reader :bike_list
  attr_accessor :capacity
  attr_reader :bike

  def initialize(capacity=DEFAULT_CAPACITY)
    @bike_list = []
    @capacity = capacity
  end

  DEFAULT_CAPACITY = 20

  def release_bike
    fail "Dock is empty" if empty?
    @bike_list.pop
  end

  def dock_bike(bike)
    fail "Dock is full" if full?
    @bike_list << bike
  end

  private
  def full?
    @bike_list.count >= capacity
  end

  def empty?
    @bike_list.empty?
    # @bike_list.count == DEFAULT_CAPACITY
  end

end
