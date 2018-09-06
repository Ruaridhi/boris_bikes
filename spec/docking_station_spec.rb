require 'docking_station.rb'
require 'bike'
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
  it 'docking station releases bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike


  end

  it 'should dock bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'dock should create a bike' do
    bike1 = Bike.new
     expect(subject.dock(bike1)).to eq(bike1)
     expect(subject.bike).to eq(bike1)
  end
end 
end
