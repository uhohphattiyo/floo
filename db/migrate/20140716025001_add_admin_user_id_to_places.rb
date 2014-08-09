class AddAdminUserIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :admin_user_id, :integer
    add_index :places, :admin_user_id
	
  end
end
