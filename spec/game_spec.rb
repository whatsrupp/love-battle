require 'game'

describe Game do
  subject(:game) { described_class.new("Connie", "Nick") }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  describe "#initialize" do
    it "initializes the game with two players" do
      expect(game.player1).to eq "Connie"
      expect(game.player2).to eq "Nick"
    end
  end

    describe "#attack" do
      it "player 1 hp decreases by 10" do
        expect(player1).to receive(:receive_damage) # Message check, when extracting a class it goes above the action.
        game.attack(player1)
      end
    end
  end
