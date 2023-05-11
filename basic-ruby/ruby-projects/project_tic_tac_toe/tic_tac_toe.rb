# tic_tac_toe

module TicTacToe
    GAMEBOARD = Array.new(3) {Array.new(3)}

    def print_game
        puts " #{GAMEBOARD[0][0]} | #{GAMEBOARD[0][1]} | #{GAMEBOARD[0][2]} "
        puts "--+--+--"
        puts " #{GAMEBOARD[1][0]} | #{GAMEBOARD[1][1]} | #{GAMEBOARD[1][2]} "
        puts "--+--+--"
        puts " #{GAMEBOARD[2][0]} | #{GAMEBOARD[2][1]} | #{GAMEBOARD[2][2]} "
    end

end
    
play = TicTacToe.new.PrintGame
