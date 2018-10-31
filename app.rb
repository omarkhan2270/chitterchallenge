require 'sinatra/base'

class ChitterChallenge < Sinatra::Base

  get '/login' do
    erb :login
  end

  get '/home' do
    erb :home
  end

  post '/login/new' do
    #whatever it does
    redirect '/home'
  end



get 'peep/new' do
  erb :'peep/new'
end

  run! if app_file == $0
end
