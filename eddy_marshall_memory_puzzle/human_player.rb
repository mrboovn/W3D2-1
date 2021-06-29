class HumanPlayer



    def get_input
        p "please enter your move"
        @response = gets.chomp.split(" ").map! { |ele| ele.to_i }
    end

    def previous_answer

    end
    
end



#get first_input  2 3
#turn input to [2, 3]
#reveal card at @board[2][3]

#get second_input 0 1
#turn input to [0, 1]
#check if second_input.value == first_input.value





#refactor so a computer can randomly put first input
#then second input