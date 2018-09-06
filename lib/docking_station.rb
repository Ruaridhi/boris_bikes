require_relative 'bike.rb'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if @bikes.length == 20
    #@bikes.push(bike)
    @bikes << bike
  end

end
