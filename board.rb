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
                self[pos] = arr_shuffled.pop
            end
        end
        @grid 
    end

    def render
        print (0..3).to_a.join(' ')
        @grid.each_with_index do |subarr, i|
            puts "#{i} #{subarr.join(' ')}"
        end
    end

    def won?
        
    end

    def reveal
    end
end