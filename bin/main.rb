#!/usr/bin/env ruby
require 'terminal-table'

def interface
  ttt_rows = []
  ttt_rows << [1, 2, 3]
  ttt_rows << [4, 5, 6]
  ttt_rows << [7, 8, 9]
  table = Terminal::Table.new rows: ttt_rows
  puts table
end

interface
