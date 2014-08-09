class AddCityIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :city_id, :int
  end
end
