# require 'bike'
class DockingStation
  attr_reader :bike

  def release_bike
    raise "no bikes available" if @bike == nil
    Bike.new
  end
  def dock(bike)
    @bike = bike
  end
end
