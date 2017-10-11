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

post "/setup" do
players_name = params[:players_name]
diff = params[:ai_diff]
num_of_players = ""
if players_name.length == 1
    num_of_players = "1"
else
    num_of_players = "2"
end
if diff == "1"
    session[:ai] = Random_ai.new
elsif diff == "2"
    session[:ai] = Sequence_ai.new
elsif diff == "3"
    session[:ai] = Hard_ai
else
    session[:ai] = "no ai"
end
players_name = players_name.to_s

redirect "/game?players_name=" + players_name + "&diff=" + diff + "&num_of_players=" + num_of_players

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
    
    session[:num_of_players] = params[:num_of_players]
    session[:players_name] = params[:players_name]
    erb :game, locals:{num_play:session[:num_of_players],players_name:session[:players_name]}
end

post "/game" do
   info = params[:info]
    info
end