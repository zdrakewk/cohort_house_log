class RoomsController < ApplicationController
  # routes consist of
  # HTTP Verb - URL - Block
  get '/rooms' do # index route
    # get a list of rooms from the table
    @all_rooms = Room.all # <~ connect 2 table via MODEL
    # binding.pry
    erb :'rooms/index' # render the index view
  end

  get '/rooms/new' do # display form to create a new room obj
    # binding.pry
    erb :'rooms/new'
  end

  post '/rooms' do # create a new room obj based on form (user) input
  # option 3
    @new_room = Room.new(params)

    @new_room.save

    redirect "/rooms/#{@new_room.id}"
  end

  get '/rooms/:id' do # SHOW route
    # display ONE room obj
    # binding.pry
    @room_obj = Room.find_by(id: params[:id])
    # @room_obj = Room.find( params[:id])

    erb :'rooms/show.html'
  end

  get '/rooms/:id/edit' do # EDIT route
    # display form to edit room obj form
    @room_obj = Room.find_by(id: params[:id])

    erb :'rooms/edit'
  end

  patch '/rooms/:id' do # update data in table w/user input
    # binding.pry
    # option 1
    # @room_obj = Room.find_by(id: params[:id])
    # @room_obj.theme = params[:theme]
    # @room_obj.name = params[:name]
    # @room_obj.use = params[:use] ? true : false
    # @room_obj.save

    @room_obj = Room.find_by(id: params[:id])

    @room_obj.update(
      theme: params[:theme],
      name: params[:name],
      use: params[:use]
    )

    redirect '/rooms'
  end

  delete '/rooms/:id' do #delete obj from table
    @room_obj = Room.find_by(id: params[:id])
    @room_obj.delete # | @room.obj.destory
    redirect '/rooms'
  end
end