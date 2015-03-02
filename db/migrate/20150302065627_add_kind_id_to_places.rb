class AddKindIdToPlaces < ActiveRecord::Migration
  def change
  	   add_column :places, :kind_id, :integer
       add_index :places, :kind_id
  end
end
