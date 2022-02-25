# require_relative roulette

class App

def initialize
welcome


end 


def welcome
  puts "Welcome to the Main Menu"
  puts "Which game would you like to play?"
  menu
end

def menu
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