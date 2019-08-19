class Job < ApplicationRecord
  belongs_to :vendor
  belongs_to :performer
  validates :position, :description, presence: true
end
