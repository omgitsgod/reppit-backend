class User < ApplicationRecord
  has_secure_password
  has_many :workouts
  validates :username, uniqueness: { case_sensitive: false }
end
