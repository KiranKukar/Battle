require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # routes go here
  get '/' do
    "player1 = " << session[:player1].inspect
    "player2 = " << session[:player2].inspect
    erb(:index)
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']
    @hit_points1 = 60
    @hit_points2 = 60
    erb(:play)
  end

  post '/names' do
    session['player1'] = params['player1']
    session['player2'] = params['player2']
    redirect '/play'
  end

  #do not change
  run! if app_file == $0
end