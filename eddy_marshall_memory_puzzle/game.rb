require_relative "board"
require_relative "card"
require_relative "human_player"

class Game

    def initialize
        @board = Board.new
        @board.populate
        @player = Player.new
    end

    def play
        @board.render 



    

    #