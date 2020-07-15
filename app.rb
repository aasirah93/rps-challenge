require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player_1 = Player.new(params[:player_1_name])
  redirect '/play'
end

get '/play' do
  @player_1_name = $player_1.name
  @rock = session[:rock]
  @paper = session[:paper]
  @scissors = session[:scissors]
  erb :play
end

get '/attack' do
  @player_1_name = $player_1.name
  erb :attack
end

post '/play' do
  session[:rock] = params[:rock]
  session[:paper] = params[:paper]
  session[:scissors] = params[:scissors]
  redirect '/play'
end
end