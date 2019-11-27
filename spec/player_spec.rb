require 'player'

describe 'Player' do 

  subject { Player.new("Andrew") }

  it "should initialise with a given name, and return it to the user when name is called" do
    expect(subject.name).to eq("Andrew")
  end
end
