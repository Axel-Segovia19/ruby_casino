require_relative 'math'
require 'colorize'

class Roulette
include Math
  attr_accessor :user

def initialize(user)
@user = user
menu
end

def seperator
  puts "*" * 10
end

  def menu
    puts "1) Start game".cyan.underline
    puts "2) View balance and exit".light_cyan.underline
    seperator
    user_choice = gets.strip.to_i
    
    if user_choice == 1
      game_welcome
    elsif user_choice == 2
      back_to_menu
    else
      puts "Error please pick one".red
      menu
    end


  end 
  def game_welcome
    seperator
    puts "Hello" + " " + @user.full_name.cyan
    puts "This is Roulette"
    puts "You pick a number and a color, if you get them correctly you win!"
    puts "How much would you like to bet?"
    @user_bet2 = gets.strip.to_i
    guessing_numbers
  end

  def back_to_menu
    puts "Your current balance is"
    puts "$ #{@user.bank_roll}".light_green
    seperator
  end

  def guessing_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ,13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
    puts "Pick a number between 1 - 25".yellow
    seperator
    @user_guess = gets.strip.to_i
    @result1 = numbers.sample
    roulette_colors
  end
  def roulette_colors
    colors = ['red', 'black']
    puts "Pick a color: red or black".yellow
    seperator
    @user_pick = gets.strip
    @result2 = colors.sample
    roulette_results
  end
  def roulette_results
    puts "You picked #{@user_guess} and #{@user_pick}"
    if @user_guess && @user_pick == @result1 && @result2 
      puts "We picked #{@result1} and #{@result2}"
      seperator
      puts "WOW YOU GOT BOTH RIGHT".green.underline
      puts "You bet" + "$ #{@user_bet2}".light_green
    new_bankroll = @user.bank_roll + big_prize(@user_bet2)
    @user.change_bankroll(new_bankroll)
    puts "You now have" + "#{user.bank_roll}".light_green
    seperator
    menu
    elsif @user_guess == @result1 && @user_pick != @result2
      puts "We picked #{@result1} and #{@result2}"
      seperator
      puts "You Win! got the number right just not the color.".green.underline
      puts "You bet" + "$ #{@user_bet2}".light_green
    new_bankroll = @user.bank_roll + add_money(@user_bet2)
    @user.change_bankroll(new_bankroll)
    puts "You now have" "$#{user.bank_roll}".light_green
    seperator
    menu
    elsif @user_guess != @result1 && @user_pick == @result2
      puts "We picked #{@result1} and #{@result2}"
      seperator
      puts "You Win! got the number wrong but got the color right.".green.underline
      puts "You bet" + "$ #{@user_bet2}".light_green
    new_bankroll = @user.bank_roll + add_money(@user_bet2)
    @user.change_bankroll(new_bankroll)
    puts "You now have" + "$ #{user.bank_roll}".light_green
    seperator
    menu
    else
      puts "You Lose!"
      seperator
      puts "We picked #{@result1} and #{@result2}"
      puts "You bet" + "$#{@user_bet2}".light_green
    new_bankroll = @user.bank_roll - @user_bet2
    @user.change_bankroll(new_bankroll)
    puts "You now have" + "$ #{user.bank_roll}".light_green
    seperator
    menu
    end
  end
end