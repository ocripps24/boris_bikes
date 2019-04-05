require_relative 'bike'

class DockingStation

  attr_reader :bike_list

  def initialize
    @bike_list = []
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
    @bike_list.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_list.empty?
    # @bike_list.count == DEFAULT_CAPACITY
  end

end

# Define a constant, DEFAULT_CAPACITY, that stores the number 20. Do this within the DockingStation class.

# Remove references to the magic number 20 in your implementation, using DEFAULT_CAPACITY instead.

# Refactor your tests to use this new constant instead of the magic number 20.
