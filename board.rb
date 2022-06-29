require "byebug"
require_relative "./card.rb"

class Board
    DICTIONARY = ("a".."h").to_a*2
    def initialize
        @grid = Array.new(4){Array.new(4)}
    end

    def [](position)
        row = position[0]
        col = position[1]
        @grid[row][col]
    end

    def []=(position, value)
        row = position[0]
        col = position[1]
        @grid[row][col] = value
    end

    def populate
        arr_shuffled = DICTIONARY.shuffle
        (0...@grid.length).each do |i|
            (0...@grid.length).each do |j|
                pos = i, j
                self[pos] = Card.new(arr_shuffled.pop)
            end
        end
        @grid 
    end

    def render
        puts "#{"  "}#{(0..3).to_a.join(' ')}" 
        @grid.each_with_index do |subarr, i|
            puts "#{i} #{subarr.join(' ')}"
            
        end
        nil
    end

    def won?
        @grid.flatten.all? {|value| vlaue.revealed == true}
    end

    def revealed(guessed_pos)
        self[guessed_pos].reveal
    end
end

# b = Board.new
# b.populate
# b.render