require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#initialize' do
    it "capable of setting variable capacity" do
      station = DockingStation.new(50)
      50.times { station.dock_bike(Bike.new) }
      expect { station.dock_bike(Bike.new) }.to raise_error "Dock is full"
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error("Dock is empty")
      # it { is_expected.to raise_error("Dock is empty")}
    end
  end

  describe '#dock_bike' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike(Bike.new) }.to raise_error("Dock is full")
    end
  end

  it 'expected to return a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'shows docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike_list).to eq [bike]
  end

end

# describe DockingStation do
#   it 'responds to release bike' do
#     expect(subject).to respond_to :release_bike
#   end
# end
