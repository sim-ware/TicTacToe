class Board

  attr_accessor :grid

  def initialize
    @grid = []
  end

  def build
    3.times do |i|
       @grid << ['_|_|_']
    end
  end

  def show
    puts "#{@grid[0]}" + "\n"
    puts "#{@grid[1]}" + "\n"
    puts "#{@grid[2]}" + "\n"
  end

end

# [[_|_|_],
# [_|_|_]
# [_|_|_]
#
#
#   (0..3).each do |i|
#      @grid << [_|_|_]
#   end
#
# 3.times do
#    # do work here
# end
