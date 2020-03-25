#!/usr/bin/env ruby

# rubocop:disable Style/MixinUsage, Lint/MissingCopEnableDirective

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

  def winner_display(name, positions)
    print "#{name}, "
    get_input('win')
    show(positions)
  end

  def play_again?
    if get_input('play?')
      @status = 'initial'
      true
    end
  end
end
class Board
  include Interface

  attr_accessor :positions

  def initialize()
    @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @lines = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9],
      [1, 4, 7], [2, 5, 8], [3, 6, 9],
      [1, 5, 9], [3, 5, 7]
    ]
    show(@positions)
  end

  def update(input, char)
    @positions[input - 1] = char
  end

  def draw?
    if @positions.all? { |x| x.instance_of?(String) }
      get_input('draw')
      true
    end
  end

  def win?(player, board)
    if @lines.any? { |x| x - player.inputs == [] }
      winner_display(player.name, board.positions)
      true
    end
  end

  def taken?(input)
    @positions[input - 1] == 'X' || @positions[input - 1] == 'O'
  end
end
class Player
  include Interface

  attr_reader :char
  attr_accessor :name, :inputs

  def initialize(name, char)
    @name = get_input('name', name)
    @inputs = []
    @char = char
  end

  def move(input)
    @inputs << input
  end
end
class Game
  # include Interface

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def play
    until game_finish?
      game_finish? ? break : next_move(@player1)
      game_finish? ? break : next_move(@player2)
    end
    play_again?
  end

  private

  def game_finish?
    @board.win?(@player1, @board) || @board.win?(@player2, @board) || @board.draw?
  end
end
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
