require_relative 'math'
require 'colorize'

class RPS
include Math
attr_accessor :user


  def initialize(user)
    @user = user
    @Rock = 1
    @Paper = 2
    @Scissors = 3
    @option = 0
    @computer_choice = 0
    @player_choice = 0
    play
  end

  def seperator
    puts "*" * 10
  end

  def welcome1
    seperator
    puts "Hello" + " " + @user.full_name.cyan
    puts "This is Rock Paper Sissors"
    puts "The game where if you guess right you beat your opponent"
    puts "How much would you like to bet?"
    seperator
    @user_bet = gets.strip.to_i
    welcome2
  end

  def welcome2
    puts "1) Rock".light_red
    puts "2) Paper".blue
    puts "3) Scissors".yellow
    puts "4) View balance and play a different game!"
    seperator

    @player_choice = gets.to_i
  end

  def result
    @computer_choice = rand (1..3) 
    
    if (@player_choice != 4 && @player_choice != 5)
        print "computer choice is "
    
        case
        when @computer_choice == 1
            puts "Rock"
        when @computer_choice == 2
            puts "Paper"
        when @computer_choice == 3
            puts "Scissors"
        end
    end

    if (@player_choice == 4)
      puts "Your current balance is"
      puts "$ #{@user.bank_roll}".light_green
      seperator
    elsif (@computer_choice == @Rock && @player_choice == @Rock)
    puts "draw".yellow
    seperator
        play
    elsif (@computer_choice == @Rock && @player_choice == @Paper)
    puts "Player wins".cyan.underline
    seperator
    you_win
    play
    elsif (@computer_choice == @Rock && @player_choice == @Scissors)
    puts "Computer wins".red.underline
    seperator
    you_lose
    play
    elsif (@computer_choice == @Paper && @player_choice == @Rock) 
    puts "computer wins".red.underline
    seperator
    you_lose
        play
    elsif (@computer_choice == @Paper && @player_choice == @Paper)
    puts "draw".yellow
    play
    elsif (@computer_choice == @Paper && @player_choice == @Scissors)
    puts "player wins".cyan.underline
    seperator
   you_win
    play 
    elsif (@computer_choice == @Scissors && @player_choice == @Rock) 
    puts "player wins".cyan.underline
    seperator
   you_win
        play
    elsif (@computer_choice == @Scissors && @player_choice == @Paper)
    puts "computer wins".red.underline
    seperator
    you_lose
    play
    elsif (@computer_choice == @Scissors && @player_choice == @Scissors)
    puts "draw".yellow
    seperator
    play
    else 
    puts "error lets start all over"
    play
    end
end

def you_win
  puts "You bet" + "$ #{@user_bet}".light_green
    new_bankroll = @user.bank_roll + add_money(@user_bet)
    @user.change_bankroll(new_bankroll)
    puts "You now have" + "$ #{user.bank_roll}".light_green

end

def you_lose
  puts "You bet" + "$ #{@user_bet}".light_green
  new_bankroll = @user.bank_roll - @user_bet
  @user.change_bankroll(new_bankroll)
  puts "You now have" + "$ #{user.bank_roll}".light_green
end

def play
  while (@player_choice != 4)
      welcome1
      result
  
    end

  end


end
  