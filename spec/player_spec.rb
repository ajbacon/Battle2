require 'player'

describe 'Player' do 

  subject { Player.new("Andrew") }

  it "should initialise with a given name, and return it to the user when name is called" do
    expect(subject.name).to eq("Andrew")
  end

  it "should initialize with 100 HP, and return it to the user when hp is called" do 
    expect(subject.hp).to eq(100)
  end
end
