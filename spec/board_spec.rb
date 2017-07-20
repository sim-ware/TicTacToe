require 'board'

describe Board do

  context "#initialize" do
    it "initializes the board with a grid" do
      expect { Board.new(grid: "grid") }.to_not raise_error
    end

    it "sets the grid with three rows by default" do
      board = Board.new
      expect(board.grid.length).to eq 3
    end

    it "creates three things in each row by default" do
      board = Board.new
      board.grid.each do |row|
        expect(row.length).to eq 3
      end
    end
  end

end
