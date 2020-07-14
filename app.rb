require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  redirect '/play'
end

get '/play' do
  @player_1_name = session[:player_1_name]
  @rock = session[:rock]
  @paper = session[:paper]
  @scissors = session[:scissors]
  erb :play
end

get '/attack' do
  @player_1_name = session[:player_1_name]
  erb :attack
end

post '/play' do
  session[:rock] = params[:rock]
  session[:paper] = params[:paper]
  session[:scissors] = params[:scissors]
  redirect '/play'
end
end