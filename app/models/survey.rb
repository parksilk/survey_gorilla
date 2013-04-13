class Survey < ActiveRecord::Base
  belongs_to :user
  has_many   :questions
  #has_many   :completed_surveys
  has_and_belongs_to_many :users

end
