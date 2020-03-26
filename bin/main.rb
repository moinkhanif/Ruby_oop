#!/usr/bin/env ruby

# rubocop:disable Style/MixinUsage, Lint/MissingCopEnableDirective, Style/GuardClause

# require 'colorize'  # Need to run 'gem install colorize'

# self customized libary

module Interface
  def show(positions)
    puts
    puts "\t  #{positions[6]} | #{positions[7]} | #{positions[8]}"
    puts "\t ---|---|---"
    puts "\t  #{positions[3]} | #{positions[4]} | #{positions[5]}"
    puts "\t ---|---|---"
    puts "\t  #{positions[0]} | #{positions[1]} | #{positions[2]}"
    puts
  end

  def get_input(text, default = '')
    texts = {
      'position' => "Please enter your position (1 - 9) or press 'q' to exit game: \n",
      'play?' => "Would you like to play again?(y/n)?\n",
      'taken' => "Try again, that spot has been taken already.\n",
      'invalid' => "Please enter an valid number, thanks! \n",
      'win' => "Congratulations! You won!\n",
      'draw' => "Game board is full! Its a draw!\n",
      'name' => 'Please input your name for',
      'welcome' => "Welcome to the Tic-Tac-Toe Game, there will be 2 players to join this game! \n",
      'finish' => "Thanks for your time! \n",
      'quit' => "Sorry to see you go, see you next time! \n"
    }

    print texts[text]

    case text
    when 'position'
      gets.chomp
    when 'play?'
      input = gets.chomp
      input == 'y'
    when 'name'
      print "(#{default}):"
      gets.chomp
    when 'finish'
      sleep 1
      exit
    when 'quit'
      exit
    else
      false
    end
  end

  def valid_number?(input)
    regex = /^[1-9]$/
    regex.match?(input)
  end

  def next_move(player)
    loop do
      print "#{player.name}, "
      input = get_input('position')

      if valid_number?(input)
        input = input.to_i
        if @board.taken?(input)
          get_input('taken')
        else
          player.move(input)
          @board.update(input, player.char)
          show(@board.positions)
          break
        end
      else
        get_input('quit') if input == 'q'
        get_input('invalid')
        sleep 1
      end
      show(@board.positions)
    end
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

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

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
