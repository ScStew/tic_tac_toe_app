require 'sinatra'


get "/" do
    erb :first_page
end

post "/no_play" do
    erb :no_page
end


get "/yes_play" do
    erb :yes_page
end