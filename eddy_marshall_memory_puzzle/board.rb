class Board

    def initialize
        @board = Array.new(4) {Array.new(4,nil)}
    end

    def populate
        count = 0
        while count < @board.length 
        @card_1 = Card.new
        @card_2 = @card_1
        row = rand(0..3) 
        col = rand(0..3)
        @board[row][col] = @card_1.value if @board[row][col] == nil

    end
#hello


end