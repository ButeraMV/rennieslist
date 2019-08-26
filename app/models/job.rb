class Job < ApplicationRecord
  has_and_belongs_to_many :tags
  validates :position, :description, presence: true
end
