class Board
    DICTIONARY = ("a".."i").to_a
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

    def num_char(value)
        count = 0
        @grid.flatten.each do |ele|
            if ele == value
                count += 1
            end
        end
        return count
    end

    def place_random_char(value)
        total_char = 2
        while self.num_char(value) < total_char
            row = rand(0...@grid.length)
            column = rand(0...@grid.length)
            position = [row, column]
            self[position] = value
        end
    end

    def populate
        DICTIONARY.each do |char|
            self.place_random_char(char)
        end
        @grid
    end

    def print
        @grid.each {|subr| p subr}
    end
end