require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/player'
    also_reload './lib/game'
  end

  enable :sessions

  # routes go here

  post '/names' do
    player1 = Player.new(params['player1'])
    player2 = Player.new(params['player2'])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/' do
    erb(:index)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  #do not change
  run! if app_file == $0
end