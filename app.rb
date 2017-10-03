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
    redirect "/difficulty?"
end

get "/difficulty" do
    erb :difficulty
end