class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :lat
      t.string :long

      t.timestamps null: false
    end
  end
end
