require 'sinatra/base'

class ChitterChallenge < Sinatra::Base

  get '/' do
    'Chitter Challenge'
  end

  get '/login' do
    erb :login
  end

  run! if app_file == $0
end
