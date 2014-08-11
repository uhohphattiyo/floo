class AddKindToPlaces < ActiveRecord::Migration
  def change
  	add_column :places, :kind, :int
  end
end
