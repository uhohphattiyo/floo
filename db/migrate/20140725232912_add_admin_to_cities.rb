class AddAdminToCities < ActiveRecord::Migration
  def change
    add_column :cities, :admin_user_id, :integer
    add_index :cities, :admin_user_id
  end
end
