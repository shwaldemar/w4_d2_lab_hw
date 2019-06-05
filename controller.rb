#test game browser path http://localhost:4567/game/rock/paper


require("pry-byebug")
require("sinatra")
require("sinatra/contrib/all")
require("json")

require_relative("./models/game")

also_reload("./models")

get "/game/:user_choice/:computer_choice" do
  @user_choice = params["user_choice"]
  @computer_choice = params["computer_choice"]
  game = Game.new(@user_choice, @computer_choice)
  @game_result = game.game()
  erb(:result)
end

get "/welcome" do
  erb(:welcome)
end

get "/" do
  redirect "/game/rock/paper"
end
