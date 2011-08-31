class AddPhotoColumnToVehicles < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :photo, :string
  end

  def self.down
    remove_column :vehicles, :photo
  end
end
