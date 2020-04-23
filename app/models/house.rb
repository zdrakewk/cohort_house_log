class House < ActiveRecord::Base
  has_many :rooms
end

# use #rooms add room_obj to arr
# will update the table
# bath1 = Room.find(2)
# h1.rooms << bath1

#3) use the #build method
# obj.assoc.BUILD(arg-attrs-of-the-obj-your-building)
# h1.rooms.build(name: 'woman_cave', theme: 'pretty-in-pink', use: true)
# save house_obj (h1) 2 get info into the table
# h1.save