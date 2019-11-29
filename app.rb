require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    session[:player_2] = Player.new(params[:player_2])
    session[:game] = Game.new(session[:player_1], session[:player_2] )
    redirect '/play'
  end

  get '/play' do 
    @game = session[:game]
    erb(:play)
  end

  get '/attack' do
    @game = session[:game]
    @game.attack(@game.opponent)
    @game.switch_turn
    

    erb(:attack)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
