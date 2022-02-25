# require_relative 'math'

class Roulette
# include Math
  attr_accessor :user

def initialize(user)
@user = user
game_welcome
end

  def game_welcome
    puts "Hello" + " " + @user.full_name
    puts "This is Roulette"
    puts "You pick a number and a color, if you get them correctly you win!"
    guessing_numbers
  end
  def guessing_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
    puts "Pick a number between 1 - 25"
    @user_guess = gets.strip.to_i
    @result1 = numbers.sample
    roulette_colors
  end
  def roulette_colors
    colors = ['red', 'black']
    puts "Pick a color: 1 for red, 2 for black"
    @user_pick = gets.strip.to_i
    @result2 = colors.sample
    roulette_results
  end
  def roulette_results
    puts "You picked #{@user_guess} and #{@user_pick}"
    if @user_guess && @user_pick == @result1 && @result2 
      puts "You Win"
    # elsif @user_pick == @result2
    #   puts "You Win!"
    else
      puts "You Lose!"
    end
  end
end