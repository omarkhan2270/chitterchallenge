require 'sinatra/base'
require 'peep'

class ChitterChallenge < Sinatra::Base
  enable :method_override

  get '/' do
    @peep = Peep.all
    erb :index
  end

  get '/peep' do
    erb :peep
  end

  post '/peep' do
    Peep.create(peep: params[:peep], time: Time.now)
    redirect '/'
  end

  run! if app_file == $0
end
