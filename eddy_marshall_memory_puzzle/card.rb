class Card 
    def initialize
        @facing = 'down'
        @value = ("A".."B").to_a.sample
        @facing_up? = false     
        @reveal = false 
    end

    def hide
        if @facing_up?
            return false
        else
            return true
        end
    end

    def reveal
        @reveal
    end

    def to_s
        #change the card value :S to string "S"
    end
   
    
end



