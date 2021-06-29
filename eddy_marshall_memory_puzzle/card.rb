class Card 
    
    attr_reader :value, :facing_up
    
    def initialize(value = ("A".."Z").to_a.sample )
        @value = value
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
        @value.to_s
    end
    


    
end
