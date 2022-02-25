require_relative 'user'

class App
  attr_accessor :user

def initialize
welcome
@user = create_user
end 


def welcome
  puts "Welcome to the Casino Royal"
end

def create_user
  puts "What is your first name?"
  f_name = gets.strip
  puts "What is your last name?"
  l_name = gets.strip
  puts "How old are you?"
  age = gets.strip.to_i
  puts "How much money did you bring with you?"
  bank_roll = gets.strip.to_i

  @user = User.new(f_name, l_name, age, bank_roll)
  
  menu
end

def menu
  puts "Which game would you like to play?"
  puts "1) Roulette"
  puts "2) War"
  puts "3) Exit"

  user_input = gets.strip.to_i
  if user_input == 1 
    puts "test"
  elsif user_input == 2
    puts "test"
  elsif user_input == 3
    puts "bye"
    exit
  else
    menu
    end
  end
end

app = App.new