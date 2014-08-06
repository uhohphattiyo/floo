class AddLocToCities < ActiveRecord::Migration
  def change
    add_column :cities, :location_id, :integer
  end
end
