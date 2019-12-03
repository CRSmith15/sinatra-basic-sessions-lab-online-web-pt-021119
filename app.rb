require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do test?
    enable :sessions 
    set :session_secret
  end
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do 
    session[:item] = params[:item]
  end
end