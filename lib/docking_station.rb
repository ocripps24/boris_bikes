require_relative 'bike'

class DockingStation

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

end
