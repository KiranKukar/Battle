require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # routes go here
  get '/' do
    "Testing infrastructure working!"
  end

  #do not change
  run! if app_file == $0
end