require_relative './player'

class Game

  attr_reader :player1, :player2, :current, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current = @player1
    @opponent = @player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    # parallel assigment
    @current, @opponent = @opponent, @current
  end

  def winner
    if @player1.hp == 0
      return @player2
    elsif @player2.hp == 0
      return @player1
    end
    false
  end
end 

