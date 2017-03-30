require 'player'

describe Player do

subject(:player) {described_class.new}

  it "expects the player to input a name" do
    player = Player.new("Nick")
    expect(player.named).to eq "Nick"
  end

end
