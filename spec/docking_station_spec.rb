require 'docking_station.rb'
require 'bike'
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'docking station releases bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'should dock bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'dock should create a bike' do
    bike1 = Bike.new
     expect(subject.dock(bike1)).to eq(bike1)
     expect(subject.bike).to eq(bike1)
  end

   it "should check availablity"
     expect { subject.release_bike }.to raise_error("no bikes available")
   end
end
