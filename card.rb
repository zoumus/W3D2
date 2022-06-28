class Card
    DICTIONARY = ("A".."z").to_a

    attr_reader :value

    def initialize(value, revealed=false)
        @value = value
        @revealed = revealed
    end

    def reveal
    end

    def to_s
    end

    def hide
    end

    def ==
    end
end