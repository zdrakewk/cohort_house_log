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
    # option 1
    # @new_room = Room.new
    # @new_room.name = params[:name]
    # @new_room.theme = params[:theme]
    # @new_room.use = params[:use]

  # option 2
  # @new_room = Room.new(
  #     name: params[:name],
  #     theme: params[:theme],
  #     use: params[:use]
  #   )

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


end