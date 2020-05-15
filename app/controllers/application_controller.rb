require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  # routes consist of
  # HTTP Verb - URL - Block
  get "/" do #root_route
    # binding.pry
    erb :welcome
  end

  helpers do
    def is_logged_in? # checking to see if a user is logged in
      # !!session[:user_id]
      session.has_key?(:user_id)
    end
    
    def current_user # return user OBJECT logged in user info
       @current_user ||= User.find(session[:user_id]) if is_logged_in?
    end
  end
end
