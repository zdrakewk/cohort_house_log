class RoomsController < ApplicationController
  # routes consist of
  # HTTP Verb - URL - Block
  get '/rooms' do # index route
    # get a list of rooms from the table
    @all_rooms = Room.all # <~ connect 2 table via MODEL
    # binding.pry
    erb :'rooms/index' # render the index view
  end
end