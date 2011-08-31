class AddFrontColumnToVehicles < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :front, :string
    add_column :vehicles, :left, :string
    add_column :vehicles, :right, :string
    add_column :vehicles, :rear, :string
    add_column :vehicles, :interior_left, :string
    add_column :vehicles, :interior_right, :string
    add_column :vehicles, :interior_driver, :string
    add_column :vehicles, :odometer, :string
    add_column :vehicles, :under_hood, :string
    add_column :vehicles, :trunk, :string
  end

  def self.down
    remove_column :vehicles, :front
    remove_column :vehicles, :front
    remove_column :vehicles, :left
    remove_column :vehicles, :right
    remove_column :vehicles, :rear
    remove_column :vehicles, :interior_left
    remove_column :vehicles, :interior_right
    remove_column :vehicles, :interior_driver
    remove_column :vehicles, :odometer
    remove_column :vehicles, :under_hood
    remove_column :vehicles, :trunk
  end
end
