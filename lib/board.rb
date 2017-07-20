class Board
  attr_reader :grid

  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end

  def get_cell(x, y)
    grid[y][x]
  end

  def set_cell(x, y, value)
    get_cell(x, y).value = value
  end

  private

  def default_grid
    Array.new(3) { Array.new(3) { Cell.new } }
  end

end



# class Board
#
#   attr_accessor :grid
#
#   def initialize
#     @grid = []
#   end
#
#   def build
#     3.times do |i|
#        @grid << ['_|_|_']
#     end
#   end
#
#   def show
#     puts "#{@grid[0]}" + "\n"
#     puts "#{@grid[1]}" + "\n"
#     puts "#{@grid[2]}" + "\n"
#   end
#
# end
