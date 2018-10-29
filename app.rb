require 'sinatra/base'

class ChitterChallenge < Sinatra::Base

  get '/login' do
    erb :login
  end

  post '/login/new' do
    #whatever it does
    redirect '/login'
  end

  run! if app_file == $0
end
