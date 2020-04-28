class AddColumnPeopleIdToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :people_id, :integer
  end
end

#ALTER TABLE table_name ADD column_name datatype;