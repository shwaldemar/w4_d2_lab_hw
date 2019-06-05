require("pry-byebug")
require("sinatra")
require("sinatra/contrib/all")
require("json")

require_relative("./models/game")

also_reload("./models")

get "/game/:user_choice/:computer_choice" do
  user_choice = params["user_choice"]
  computer_choice = params["computer_choice"]
  game = game.new(user_choice, computer_choice)
  @game_result = game.game()
  erb(:result)
end
