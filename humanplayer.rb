class Humanplayer
    def initialize (name)
        @name = name
    end

    def get_input
        print "player #{@name}, enter position like '4 5'"
        input = gets.chomp.split.map(&:to_i)
    end


end