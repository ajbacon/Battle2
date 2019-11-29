require 'game'

describe 'Game' do

  subject(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player, name: "Ben") }
  let(:player2) { double(:player, name: "Andrew") }

  describe '#attack' do 
    it "should damage the player" do
      allow(player2).to receive(:receive_damage)
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  it "should have a player 1" do
    expect(subject.player1).to eq(player1)
  end

  it "should have a player 2" do
    expect(subject.player2).to eq(player2)
  end

  describe "#turn" do
    it "should initialize to be player1's turn" do 
      expect(game.current).to eq(player1)
    end
  end

  describe "#switch_turn" do
    it "should switch turn after the first attack" do 
      game.switch_turn
      expect(game.current).to eq(player2)
    end
  end
end