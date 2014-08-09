class AddIndexToPlaces < ActiveRecord::Migration
  def change
 	add_index :places, :location_id
  end
end
