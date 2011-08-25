class AddSpecialToVehicles < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :special, :boolean
  end

  def self.down
    remove_column :vehicles, :special
  end
end
