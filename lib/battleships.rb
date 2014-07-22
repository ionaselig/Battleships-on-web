
require 'sinatra/base'

class BattleShips < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/name_input' do
  	erb :new_game
	end

	post '/init_game' do
		@name = params[:player]
    redirect '/name_input' if @name.empty?
		erb :init_game
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
