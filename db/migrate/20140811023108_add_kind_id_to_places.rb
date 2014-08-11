class AddKindIdToPlaces < ActiveRecord::Migration
    def change
    add_column :places, :kind_id, :int
  end
end
