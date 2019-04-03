require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'expected to return a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }


end

# describe DockingStation do
#   it 'responds to release bike' do
#     expect(subject).to respond_to :release_bike
#   end
# end
