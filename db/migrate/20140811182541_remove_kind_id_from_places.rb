class RemoveKindIdFromPlaces < ActiveRecord::Migration
  def change
  	remove_column :places, :kind_id, :integer
  end
end
