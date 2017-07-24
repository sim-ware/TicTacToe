require 'game'

describe Game do

  let (:simi) { Player.new({color: "X", name: "Simi"}) }
  let (:luna) { Player.new({color: "O", name: "Luna"}) }

  context "#initialize" do
    it "randomly selects a current player" do
      Array.any_instance.stub(:shuffle) { [simi, luna] }
      game = Game.new([simi, luna])
      expect(game.current_player).to eq simi
    end

    it "randomly selects an other player" do
      Array.any_instance.stub(:shuffle) { [simi, luna] }
      game = Game.new([simi, luna])
      expect(game.other_player).to eq luna
    end
  end

end
