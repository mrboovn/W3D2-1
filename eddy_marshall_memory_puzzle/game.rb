require_relative "board"
require_relative "card"
require_relative "human_player"

class Game

    def initialize
        @board = Board.new
        @board.populate
        @player = HumanPlayer.new
    end

    def play
        system("clear")
        while @board.won? == false
            @board.render
            first_answer = @player.get_input
            @board[first_answer].flip
            @board.render 
            second_answer = @player.get_input 
            @board[second_answer].flip 
            if @board[first_answer].value != @board[second_answer].value 
                @board.render
                @board[first_answer].flip 
                @board[second_answer].flip 
            end
            puts 
            puts 
        end
    end

end