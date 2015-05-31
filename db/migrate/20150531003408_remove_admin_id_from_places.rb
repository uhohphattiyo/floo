class RemoveAdminIdFromPlaces < ActiveRecord::Migration
  def change
  	remove_column :places, :admin_user_id
  end

  def down
  	remove_index(:places, :name => "index_places_on_admin_user_id")
  	remove_index(:kinds, :name => "index_kinds_on_admin_user_id")
  	remove_index(:cities, :name => "index_cities_on_admin_user_id")
  end

end
