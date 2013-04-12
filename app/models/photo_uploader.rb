class PhotoUploader < ActiveRecord::Base
  include CarrierWave::MiniMagick

  storage :file
end
