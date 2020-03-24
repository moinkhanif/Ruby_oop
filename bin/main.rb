#!/usr/bin/env ruby

# rubocop:disable Style/MixinUsage

# require 'colorize'  # Need to run 'gem install colorize'

# self customized libary
require '../lib/interface.rb'
require '../lib/board.rb'
require '../lib/player.rb'
require '../lib/game.rb'

include Interface

loop do
  get_input('welcome')

  player1 = Player.new('player1', 'X')
  player2 = Player.new('player2', 'O')
  board = Board.new
  game = Game.new(player1, player2, board)

  unless game.play
    get_input('finish')
    break
  end
end
