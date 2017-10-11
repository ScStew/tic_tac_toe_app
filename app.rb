require 'sinatra'
require_relative "ai.rb"
require_relative "player.rb"
require_relative "board.rb"
require_relative "game.rb"
enable :sessions


get "/" do
    session[:board]= Board.new
    session[:player] = Player.new 
    session[:player].player = "x"  
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
session[:first] = params[:first]
session[:players_name] = params[:players_name]
diff = params[:ai_diff]
if session[:players_name].length == 1
    session[:num_of_players] = "1"
else
    session[:num_of_players] = "2"
end
if diff == "1"
    session[:ai] = Random_ai.new
elsif diff == "2"
    session[:ai] = Sequence_ai.new
elsif diff == "3"
    session[:ai] = Hard_ai.new
else
    session[:ai] = "no ai"
end
players_name = players_name.to_s

redirect "/game?"

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
    message = params[:message]
    
        if message == nil
            message = ""
        end
        p "#{session[:first]} heres first"
        if session[:first] == "second"
            session[:order] = ["x","ai", 'o','player']
            choice =''
            game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
        else
            session[:order] = ['x',"player",'o', 'ai']
        end
        session[:player].change_players


    erb :game, locals:{message:message,num_play:session[:num_of_players],players_name:session[:players_name],first:session[:first]}
end

post "/game" do
   choice = params[:choice]
    if session[:num_of_players] == 2 || session[:order][1] == "ai"
        ret = game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
            if ret == "WINNER"
                message = "WINNER #{session[:player].player}"
            elsif ret == "TIE"
                message = "TIE"
            else
                message = ""
            end
    else
        ret = game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
        if ret == "WINNER"
            message = "WINNER #{session[:player].player}"
        elsif ret == "TIE"
            message = "TIE"
        else
            message = ""
        end
        session[:player].change_players
        ret = game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
        if ret == "WINNER"
            message = "WINNER #{session[:player].player}"
        elsif ret == "TIE"
            message = "TIE"
        else
            message = ""
        end
    end

    session[:player].change_players
    redirect "/game?message=" + message

end