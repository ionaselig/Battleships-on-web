
require 'sinatra/base'


class BattleShips < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    session[:players] = []
    session[:greeting] = "What's your name?"
    erb :index
  end

  get '/new_game' do
    @greeting = session[:greeting]
  	erb :new_game
	end

	post '/new_game' do
		@name = params[:player]
    redirect '/name_input' if @name.empty?
    session[:greeting] = "Welcome #{@name} please enter your opponent"
    session[:players] <<  params[:player]
    redirect '/launch_game' if session[:players].count == 2
		redirect '/new_game'
	end

  get '/launch_game' do
    erb :launch_game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
