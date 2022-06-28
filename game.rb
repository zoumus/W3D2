class Game
    def initialize
        @board = Board.new
        @guessed_pos = []
        @previous_guess = []
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

    end

    
end