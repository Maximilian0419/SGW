class Vehicle < ActiveRecord::Base
  
  mount_uploader :photo, PhotoUploader
  mount_uploader :front, FrontUploader
end
