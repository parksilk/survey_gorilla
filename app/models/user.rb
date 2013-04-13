class User < ActiveRecord::Base
  has_many :created_surveys, :class_name => Survey
  has_and_belongs_to_many :taken_surveys, :class_name => Survey

  has_and_belongs_to_many :choices
end
