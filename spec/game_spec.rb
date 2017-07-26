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

  context "#switch_players" do
    it "will set @current_player to @other_player" do
      game = Game.new([simi, luna])
      other_player = game.other_player
      game.switch_players
      expect(game.current_player).to eq other_player
    end

    it "will set @other_player to @current_player" do
      game = Game.new([simi, luna])
      current_player = game.current_player
      game.switch_players
      expect(game.other_player).to eq current_player
    end
  end

  context "#solicit_move" do
    it "asks the player to make a move" do
      game = Game.new([simi, luna])
      game.stub(:current_player) { simi }
      expected = "Simi; Please Enter a no. between 1 & 9 to make your move"
      expect(game.solicit_move).to eq expected
    end
  end

  context "#get_move" do
    it "converts human_move of '1' to [0, 0]" do
      game = Game.new([simi, luna])
      expect(game.get_move("1")).to eq [0, 0]
    end

    it "converts human_move of '7' to [0, 2]" do
      game = Game.new([simi, luna])
      expect(game.get_move('7')).to eq [0, 2]
    end
  end

end
