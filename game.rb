require_relative "board.rb"
require_relative "humanplayer.rb"

class Game
    def initialize
        @board = Board.new
        @previous_guess = nil
        @player_1 = Player.new("tianshu")
        @player_2 = Player.new("ZuZu")
        @current_player = @player_1
    end

    def switch_turn
        if @current_player == @player_1
            @current_player = @player_2
        else
            @current_player = @player_1
        end
    end

    def play
        @board.render
        while !@board.won?
            first_guess = @current_player.get_input
            @board.revealed(first_guess)
            @board.render
            second_guess = @current_player.get_input
            @board.revealed(second_guess)
            @board.render

            if @board[first_guess].value != @board[second_guess].value
                [first_guess, second_guess].each { |pos| @board[pos].hide }
                print 'try again'
            else
                print "it's a match!"
            end
            self.switch_turn
        end
    end

end