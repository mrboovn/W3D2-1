class Card 
    
    attr_reader :card
    
    def initialize
        @value = ("A".."B").to_a.sample
        @facing_up = false     
        @reveal = false 
    end

    def flip
        if @facing_up
            @facing_up = false
        else
            @facing_up = true
        end
    end

    def to_s
        #change the card value :S to string "S"
        @value.to_s
    end
    #H

    
end