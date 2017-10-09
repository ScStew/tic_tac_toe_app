require 'sinatra'
require_relative "ai.rb"
require_relative "player.rb"
require_relative "board.rb"
enable :sessions


get "/" do
    session[:board]= Board.new
    session[:player] = Player.new   
    erb :first_page
end

post "/no_play" do
    erb :no_page
end


post "/yes_play" do
    redirect "/players?"
end

get "/players" do 
    erb :players
end

# post '/players' do
#     num_players = params[:num_players]
#     if num_players == "1"
#     redirect "/difficulty?"
#     elsif num_players == "2"
#         redirect "/game"
#     end
# end

# get "/difficulty" do
#     erb :difficulty
# end

# post "/difficulty" do 
#     diff = params[:diff]
#     if diff == "1"
#         session[:ai] = Random_ai.new
#     elsif diff == "2"
#         session[:ai] = Sequence_ai.new
#     else 
#         session[:ai] = Hard_ai.new
#     end
#     redirect "/game?"
# end

get "/game" do
    erb :game
end