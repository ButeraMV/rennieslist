class User < ApplicationRecord
  has_secure_password
  has_many :vendors
  has_many :performers
  validates :username, :email, presence: true, uniqueness: true
end
