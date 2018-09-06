require 'docking_station.rb'
require 'bike'
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
  # it 'docking station releases bike' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.release_bike).to eq bike
  it 'raises an error when there are no bikes available' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end

  describe '#dock' do
    it 'should not dock bike if at capacity (1)' do
      subject.dock(Bike.new)
      expect { subject.dock (Bike.new) }.to raise_error 'Dock full'
  end
end


  # it 'dock should create a bike' do
  #   bike1 = Bike.new
  #    expect(subject.dock(bike1)).to eq(bike1)
  #    expect(subject.bike).to eq(bike1)
  # end

end
