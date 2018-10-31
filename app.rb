require 'sinatra/base'

class ChitterChallenge < Sinatra::Base

  get '/login' do
    erb :login
  end

  get '/home' do
    erb :home
  end

  post '/login/sign_up' do
    User.sign_up(su_user_name: params[:su_user_name], su_password: params[:su_password], su_email: params[:su_email])
    redirect '/login'
  end

  post '/login/new' do
    #whatever it does
    redirect '/home'
  end

  run! if app_file == $0
end
