class Card
    # DICTIONARY = ("A".."d").to_a

    def self.==(card_1, card_2)
        return true if card_1.value == card_2.value
        false
    end

    attr_reader :value, :revealed

    def initialize(value, revealed=false)
        @value = value
        @revealed = revealed
    end

    def reveal
        if @revealed == false
            @revealed = true
            return true
        end
        false
    end

    def to_s
        if @revealed == false
            p "-"
        else
            p value
        end
    end

    def hide
        if @revealed == true
            @revealed = false
            return true
        end
        false
    end
end