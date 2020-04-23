class AddColumnHouseIdToRooms < ActiveRecord::Migration
  def change
    # method   table_name  colum-to-be-added  data_type
    add_column :rooms, :house_id, :integer
  end
end
