class Survey < ActiveRecord::Base
  belongs_to :user
  has_many   :questions
  has_and_belongs_to_many :users

  mount_uploader :image, PhotoUploader
  mount_uploader :thumbnail, PhotoUploader
end
