class AddPlaceIdToFavorites < ActiveRecord::Migration
  def change
  	add_column :places, :place_id, :integer
  end
end
