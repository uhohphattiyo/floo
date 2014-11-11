class AddPlaceIdToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :place_id, :integer
  end
end
