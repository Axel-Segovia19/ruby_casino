
class RPS
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

  def welcome1
    puts "Hello" + " " + @user.full_name
    puts "This is Rock Paper Sissors"
    puts "The game where if you guess right you beat your opponent"
    puts "1) rock"
    puts "2) paper"
    puts "3) scissors"
    puts "4) Exit"
    @player_choice = gets.to_i
  end
  
  # def menu
  #   puts "1) rock"
  #   puts "2) paper"
  #   puts "3) scissors"
  #   @player_choice = gets.to_i
  # end

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

    if (@player_choice == 5)
      puts "Your current balance is dollars"
    elsif (@computer_choice == @Rock && @player_choice == @Rock)
    puts "Round is a draw"
        play
    elsif (@computer_choice == @Rock && @player_choice == @Paper)
    puts "Player wins"
   
    puts "You won 10 bucks"
    play
    elsif (@computer_choice == @Rock && @player_choice == @Scissors)
    puts "Computer wins"
    puts "You lost 2 dollars"
    play
    elsif (@computer_choice == @Paper && @player_choice == @Rock) 
    puts "computer wins"
    
    puts "You lost 2 dollars"
        play
    elsif (@computer_choice == @Paper && @player_choice == @Paper)
    puts "draw"
    play
    elsif (@computer_choice == @Paper && @player_choice == @Scissors)
    puts "player wins"
   
    puts "You won 10 bucks"
    play 
    elsif (@computer_choice == @Scissors && @player_choice == @Rock) 
    puts "player wins"
    
    puts "You won 10 bucks"
        play
    elsif (@computer_choice == @Scissors && @player_choice == @Paper)
    # puts "case eight"
    puts "computer wins"
  
    puts "You lost 2 dollars"
    play
    elsif (@computer_choice == @Scissors && @player_choice == @Scissors)
    # puts "case nine"
    puts "draw"
    play
    else 
    end
end




def play
  while (@player_choice != 4)
      welcome1
      result
  
end
if @player_choice == 4
  exit
   
end
end


end
  