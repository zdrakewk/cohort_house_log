require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # routes consist of
  # HTTP Verb - URL - Block
  get "/" do #root_route
    erb :welcome
  end

end
