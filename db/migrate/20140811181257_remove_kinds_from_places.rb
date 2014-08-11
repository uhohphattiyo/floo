class RemoveKindsFromPlaces < ActiveRecord::Migration
  def change
  	remove_column :places, :kind, :integer
  end
end
