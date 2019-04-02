require 'docking_station'

describe DockingStation do
  it "is bike working" do
    expect(subject).to respond_to :working?
  end
end
