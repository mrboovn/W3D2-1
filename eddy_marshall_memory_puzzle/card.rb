class Card 
    def initialize
        @facing = 'down'
        @value = ("A".."B").to_a.sample
        @facing_up? = false
    end

    def flipping
        if @facing_up? == true 
            p @value
        end
    end
    
end