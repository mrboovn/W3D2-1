require_relative "card"

class Board

    attr_reader :board

    def initialize
        @board = Array.new(4) {Array.new(4,nil)}
    end

    def populate
        count = 0
        while count < (@board.length * @board.length)
            @card_1 = Card.new
            @card_2 = Card.new(@card_1.value)
            card_placed = false
            while card_placed == false 
                row = rand(0..3) 
                col = rand(0..3)
                @board[row][col] = @card_1.value if @board[row][col] == nil

            end
            count += 2
        end
    end

    def reveal(pos)
        self[pos].flip
    end

    def won?
        @board.each do |row|
            row.each do |ele|
                return false if ele.facing_up == false
            end
        end
        true
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

end