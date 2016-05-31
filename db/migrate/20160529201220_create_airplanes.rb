class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :name
      t.string :category
      t.integer :passengers
      t.integer :cabin_cubic_feet
      t.integer :cargo_cubic_feet
      t.integer :range
      t.integer :speed

      t.timestamps null: false
    end
  end
end
