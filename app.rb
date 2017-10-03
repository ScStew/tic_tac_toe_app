require 'sinatra'


get "/" do
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

post '/players' do
    num_players = params[:num_players]
    if num_players == "1"
    redirect "/difficulty?"
    elsif num_players == "2"
    end
end

get "/difficulty" do
    erb :difficulty
end

post "/difficulty" do 
    diff = params[:diff]
end