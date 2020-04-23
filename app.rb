
require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/player'
require 'app/board'
require 'app/game'
require 'app/boardCase'
require 'views/show'

puts "==============================="
puts "            MORPION"
puts "==============================="
puts "Entrez un nom pour le Joueur 1"
print "> "
#player1 = Player.new(gets.chomp) # get the name of the first player and save it in @name
#puts "Entrez un nom pour le Joueur 2"
#print "> "
#player2 = Player.new(gets.chomp)
#puts "Super c'est parti ! "
Game.new("00","11")
# Game.new.perform
# system "clear" # to clean the terminal 

# binding.pry

