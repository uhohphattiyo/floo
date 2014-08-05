class AddColumnsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :website, :string
    add_column :places, :dress, :string
    add_column :places, :food, :string
  end
end
