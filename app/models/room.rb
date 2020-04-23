class Room < ActiveRecord::Base
   belongs_to :house
end

# build assocs
# h = House.find(2)
# cheif_rm = Room.find_by(name: 'kitchen')

# MUST use SAVE after these
# 1) set the house_id attr
# cheif_rm.house_id = h.id
# cheif_rm.house_id.save

# 2) use the #house=, set 2 an obj
# bd1.house = h
# bd1.save

# BUILD on BELONGs_to
# obj.assoc.BUILD(arg-attrs-of-the-obj-your-building)
# rm.build_house(location: 'suburb', size: 'small')
# rm.save