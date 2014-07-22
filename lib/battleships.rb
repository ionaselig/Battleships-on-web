
require 'sinatra/base'

class BattleShips < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    session[:players] = []
    session[:greeting] = "What's your name?"
    erb :index
  end

  get '/name_input' do
    @greeting = session[:greeting]
  	erb :new_game
	end

	post '/init_game' do
		@name = params[:player]
    redirect '/name_input' if @name.empty?
    session[:greeting] = "Welcome #{@name} please enter your opponent"
    session[:players] <<  params[:player]
    puts session[:players].inspect
    redirect '/launch_game' if session[:players].count == 2
		redirect '/name_input'
	end

  # get '/init_game' do
  #   sleep 5
  #   redirect '/name_input'
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
