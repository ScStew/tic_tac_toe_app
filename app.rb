require 'sinatra'
require_relative "ai.rb"
require_relative "player.rb"
require_relative "board.rb"
require_relative "game.rb"
require_relative "db.rb"
enable :sessions
load './local_env.rb' if File.exist?('./local_env.rb')



get "/" do
    session[:count] = 0
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
session[:diff] = params[:ai_diff]
if session[:players_name].length == 1
    session[:num_of_players] = "1"
else
    session[:num_of_players] = "2"
end
if session[:diff] == "1"
    session[:ai] = Random_ai.new
elsif session[:diff] == "2"
    session[:ai] = Sequence_ai.new
elsif session[:diff] == "3"
    session[:ai] = Hard_ai.new
else
    session[:ai] = "no ai"
end

session[:once] = 0
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
        p "#{session[:first]} session first here"
        if session[:first] == "second"
            session[:order] = ["x","ai", 'o','player']
            if session[:once] == 0
                game("",session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
                session[:once] += 1
                session[:player].change_players
            end
        elsif session[:first] == 'first'
            session[:order] = ['x',"player",'o', 'ai']
        else
            session[:order] = ['x','player','o', 'player']
        end
    outcome = pull_table()

    erb :game, locals:{message:message,num_play:session[:num_of_players],players_name:session[:players_name],first:session[:first],outcome:outcome}
end

post "/game" do
    message = params[:message]
    if message == ""
        choice = params[:choice]

        if session[:num_of_players] == "2"
            ret = game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
            p "#{ret} ret is here"
            if ret == "WINNER"
                message = "WINNER"
                # message = "WINNER #{who_won(session[:num_of_players],session[:players_name],session[:player].player,session[:order])}"
            elsif ret == "TIE"
                message = "TIE"
            else
                message = ""
            end
            session[:player].change_players
        else
            2.times do
                ret = game(choice,session[:board],session[:player],session[:ai],session[:num_of_players],session[:order])
                if ret == "WINNER"
                    message = "WINNER #{who_won(session[:num_of_players],session[:players_name],session[:player].player,session[:order])}"
                elsif ret == "TIE"
                    message = "TIE"
                else
                    message = ""
                end
                if message == ""
                    session[:player].change_players
                end
            end
        end
    end
    if message != "" && session[:count] == 0
        session[:count] += 1

        if session[:players_name].length == 1
            session[:players_name] << "computer"
        end
        winner_card(session[:players_name],message)
    end
    redirect "/game?message=" + message
end


post "/play_again" do
    session[:count] = 0
    session[:board]= Board.new
    session[:player] = Player.new 
    session[:player].player = "x" 
    if session[:diff] == "1"
        session[:ai] = Random_ai.new
    elsif session[:diff] == "2"
        session[:ai] = Sequence_ai.new
    elsif session[:diff] == "3"
        session[:ai] = Hard_ai.new
    else
        session[:ai] = "no ai"
    end
    session[:once] = 0
    message = ""
    redirect "/game?message=" + message
    
end

