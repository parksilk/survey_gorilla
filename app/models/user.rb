require 'bcrypt'

class User < ActiveRecord::Base
   include BCrypt
  has_secure_password
  
  has_many :created_surveys, :class_name => Survey
  has_and_belongs_to_many :taken_surveys, :class_name => Survey

  has_and_belongs_to_many :choices

  validates_confirmation_of :password

end
