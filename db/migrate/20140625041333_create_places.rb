class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :location_id
      t.integer :budget_id
      t.string :name
      

      t.timestamps
    end
  end
end
