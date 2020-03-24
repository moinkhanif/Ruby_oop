#!/usr/bin/env ruby

# def getmove
#   move = gets.chomp
# end
puts 'palyer one enter name'
# player1_name = gets.chomp
puts 'palyer two enter name'
# player2_name = gets.chomp
player1 = Player.new(plaer1_name, 'X')
player2 = Player.new(plaer2_name, 'O')
board = Board.new
game = Game.new(board, player1, player2)
while gmae.game_end
  puts 'player make a move'
  current_move = getmove
  current_move = getmove while game.valid_move?(current_move)
  game.store_move(current_move)
  if game.game_end
    if game.winner_name
      puts game.winner_name
    else
      puts 'it is a draw'
    end
  end
end
