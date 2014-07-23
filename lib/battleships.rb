require 'sinatra/base'

class BattleShips < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"
  set :views, Proc.new{ File.join(root, '..', 'views') }

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
    @deploying_player = session[:players].first
    erb :launch_game
    puts params
    #get player to place ships with validation
    #increment counter
    #proceed to play_game once both ships have been placed
  end

  post '/play_game' do
    puts params
    "Hi"
    #Loop
    #Prompt the player
    #Display their tracking grid
    #Ask for coordinate (radio buttons?)
    #Return cell message
    #Attack cell if valid
    #end game if victory declared
    #change player
  end

  get '/play_game' do

  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

  # def play_game
  #   loop do
  #     play_turn
  #   end
  # end

  # def play_turn
  #   begin
  #     other_player.display_grid
  #     current_player.shoot_at(other_player.grid, current_player.request_coordinate_to_attack)
  #     end_game if victory_declared
  #     change_turn
  #   rescue Exception => error
  #     puts error.message
  #   end
  # end
