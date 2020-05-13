class SessionsController < ApplicationController
  # login - returning user, auth. them into our app
  # logout - remove their info from sessions

  get '/login' do
    'Render Login form'
  end

end