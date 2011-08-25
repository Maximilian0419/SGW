class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :milage
      t.integer :price
      t.text :description
      t.string :stock

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
