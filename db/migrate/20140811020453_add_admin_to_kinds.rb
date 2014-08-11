class AddAdminToKinds < ActiveRecord::Migration
    def change
    add_column :kinds, :admin_user_id, :integer
    add_index :kinds, :admin_user_id
  end
end
