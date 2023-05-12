# tic_tac_toe

module TicTacToe

    BASE_BOARD = [ [1,2,3], [4,5,6], [7,8,9] ]

    class Game

        attr_accessor :over, :board, :turn
        def initialize
            @over = false
            @turn = 1
            @board = BASE_BOARD.to_a
            @players = [Player.new(1, "X"), Player.new(0, "O")]
            play_game
            puts "Game is over"
        end

        def print_board

            puts " #{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]} "
            puts "---+---+---"
            puts " #{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]} "
            puts "---+---+---"
            puts " #{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]} "

        end

        def play_game
            while @over == false
                @players.each do |player|
                    if player.current_player == 1
                        place_piece(player)
                        print_board
                        if check_won? == true
                            @over = true
                            break
                        end
                        switch_turn
                    end
                end
            end
        end

        def check_won?
            possible_wins = Array.new()
            @board.each_with_index do |row, index|
                possible_wins.push(row)
                possible_wins.push(@board.map { |row| row[index]})
            end
            possible_wins.push((0..2).collect { |i| @board[i][i]})
            possible_wins.push((0..2).collect { |i| @board.reverse[i][i]})
            possible_wins.each do |win_condition|
                if win_condition.all?("X") == true
                    puts "Player X has won!"
                    return true
                elsif win_condition.all?("O") == true
                    puts "Player O has won!"
                    return true
                else
                end
            end
        end


        def place_piece(p_id)
            @turn += 1
            puts "Enter a number 1-9 to place a piece"
            placement = gets
            @board.each_with_index do |row, r_index|
                @board[r_index].each_with_index do |column, c_index|
                    if column == placement.to_i
                        @board[r_index][c_index] = p_id.piece
                    end
                end
            end
        end
        
        def switch_turn

            if @players[0].current_player == 1
                @players[0].current_player = 0
                @players[1].current_player = 1
            else
                @players[0].current_player = 1
                @players[1].current_player = 0
            end 

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

include TicTacToe

play = Game.new()


    
