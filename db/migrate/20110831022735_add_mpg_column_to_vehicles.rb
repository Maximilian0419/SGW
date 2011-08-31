class AddMpgColumnToVehicles < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :mpg, :integer
  end

  def self.down
    remove_column :vehicles, :mpg
  end
end
