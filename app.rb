get '/' do
  erb :index
end

post '/names' do
  @player_1_name = params[:player_1_name]
  erb :play
end