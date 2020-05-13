require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions #, 'password'
    set :session_secret, 'secret'
  end

  # routes consist of
  # HTTP Verb - URL - Block
  get "/" do #root_route
    erb :welcome
  end

end
