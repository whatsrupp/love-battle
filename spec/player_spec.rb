require 'player'

describe Player do

subject(:player1) { described_class.new("Nick") }
subject(:player2) { described_class.new("JJ") }

  it "expects the player to input a name" do
    # player = Player.new("Nick"
    expect(player1.name).to eq "Nick"
  end

  describe "#hit points" do
    it "expect to be initialized with a 100HP" do
      expect(player1.hp).to eq Player::DEFAULT_HP
    end
  end


  describe "#receive_damage" do
    it "want an attack to reduce a player's HP by 10" do
      expect{(player2.receive_damage)}.to change {player2.hp}.by -10
    end
  end
end
