class Player

  attr_reader :name
  attr_accessor :hp

  HP = 100
  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.hp -= 10
  end
end 