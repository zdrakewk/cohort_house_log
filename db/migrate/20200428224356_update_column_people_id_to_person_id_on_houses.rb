class UpdateColumnPeopleIdToPersonIdOnHouses < ActiveRecord::Migration
  def change
    rename_column :houses, :people_id, :person_id
  end
end
