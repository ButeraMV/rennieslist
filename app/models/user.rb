class User < ApplicationRecord
  has_secure_password
  has_many :jobs
  validates :display_name, :email, presence: true, uniqueness: true
end
