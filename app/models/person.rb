class Person < ActiveRecord::Base
  has_many :houses
  has_many :rooms, through: :houses 
end

# ~ has_many house
# ~ has_many rooms THROUGH a house 