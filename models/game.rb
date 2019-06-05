class Game
attr_reader :user_choice, :computer_choice
  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
  end

def game()

#rock v scissors
  if @user_choice == "rock" && @computer_choice == "scissors"
    return "user wins - rock beats scissors."
  elsif @user_choice == "scissors" && @computer_choice == "rock"
    return "computer wins - rock beats scissors."

# rock v paper
elsif @user_choice == "paper" && @computer_choice == "rock"
    return "user wins - paper beats rock."
  elsif @user_choice == "rock" && @computer_choice == "paper"
    return "computer wins - paper beats rock."

# scissors v paper
elsif @user_choice == "scissors" && @computer_choice == "paper"
    return "user wins - scissors beat paper"
  elsif @user_choice == "paper" && @computer_choice == "scissors"
    return "computer wins - scissors beat paper"

  else
    return "It's a draw."

  end
end


end
