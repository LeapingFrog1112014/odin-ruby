# tic_tac_toe

module TicTacToe

    BASE_BOARD = [ [1,2,3], [4,5,6], [7,8,9] ]

    class Game
        
        def initialize

            @board = BASE_BOARD.to_a
            @players = [Player.new(1, "X"), Player.new[0, "O"]]
            current_player = @players.
            print_board
            
        end

        def print_board

            puts " #{@board[0][1]} | #{@board[0][1]} | #{@board[0][2]} "
            puts "--+--+--"
            puts " #{@board[1][1]} | #{@board[1][1]} | #{@board[1][2]} "
            puts "--+--+--"
            puts " #{@board[2][1]} | #{@board[2][1]} | #{@board[2][2]} "

        end

        def check_won?
        end


        def place_piece
        end
        
        def switch_turn
        end

        class Player

            attr_accessor :current_player, :piece
    
            def initialize(c, p)
                @current_player = c
                @piece = p
            end
    
        end

    end
end


    
