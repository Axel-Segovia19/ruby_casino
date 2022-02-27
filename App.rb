require_relative 'user'
require_relative 'roulette'
require_relative 'rps'
require 'colorize'

class App
  attr_accessor :user

def initialize
welcome
@user = create_user
end 

def seperator
  puts "*" * 10
end

def welcome
  puts "**Welcome to the Casino Royal**".cyan.underline
end

def create_user
  puts "What is your first name?"
  f_name = gets.strip
  puts "What is your last name?"
  l_name = gets.strip
  puts "How much money did you bring?"
  bank_roll = gets.strip.to_i

  @user = User.new(f_name, l_name, bank_roll)
  
  menu
end

def menu
  puts "Which game would you like to play?".cyan.underline
  puts "1) ".light_green + "Roulette"
  puts "2) ".light_green + "Rock Paper Sissors"
  puts "3) ".light_green + "Exit"
  seperator

  user_input = gets.strip.to_i
  if user_input == 1 
    Roulette.new(@user)
    menu
  elsif user_input == 2
    RPS.new(@user)
    menu
  elsif user_input == 3
    puts "Thank you for coming!".magenta
    exit
  else
    menu
    end
  end
end

app = App.new