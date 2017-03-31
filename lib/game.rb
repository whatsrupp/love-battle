# To manage interactions between players

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
  end

  def attack(player) # Player can attack other player
    player.receive_damage # The other player receives damage.
  end

end
