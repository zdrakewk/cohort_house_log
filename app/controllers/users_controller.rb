class UsersController < ApplicationController
  # auth system ~> signin/login, signup & signout/logout

  # signup - new user, add & auth them to out app 

  get '/users/new' do # display a form
    erb :'users/new'
  end

  post '/users' do # add user to table & auth use in app
    # binding.pry
    new_user = User.new(params)
    if new_user.save # saves user into table
      # auth user into app
      session[:user_id] = new_user.id
      redirect to '/rooms'
    else
      erb :'users/new' 
    end
  end
end