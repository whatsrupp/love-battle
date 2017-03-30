class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp
  attr_writer :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player) # Player can attack other player
    player.receive_damage # The other player receives damage.
  end

  def receive_damage
    @hp -= 10
  end
end
