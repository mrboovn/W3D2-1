require_relative "card"

class Board

    attr_reader :board

    def initialize
        @board = Array.new(4) {Array.new(4,nil)}
    end

    def populate
        # count = 0
        # while count < (@board.length * @board.length)
        #     @card_1 = Card.new
        #     @card_2 = Card.new(@card_1.value)
        #     row = rand(0..3) 
        #     col = rand(0..3)
        #     @board[row][col] = @card_1.value if @board[row][col] == nil
        #     row = rand(0..3) 
        #     col = rand(0..3)
        #     @board[row][col] = @card_2.value if @board[row][col] == nil
        #     count += 2
        # end
        (@board.length * 2 ).times do 
            @card_1 = Card.new 
            @card_2 = Card.new(@card_1.value)
            place_card(@card_1)
            place_card(@card_2)
        end

    end

    def place_card(card)
        placed = false
        while placed == false 
            row = rand(0..3) 
            col = rand(0..3)
            if @board[row][col] == nil   
                @board[row][col] = @card_1.value 
                placed = true 
            end   
        end       
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @board[row][col] = value
    end

    def flip(pos)
        self[pos].flip
    end
    
    def render
        @board.each { |row| p row }
        return nil
    end
    #hhh

end
