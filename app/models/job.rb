class Job < ApplicationRecord
  has_many :job_tags
  has_many :tags, :through => :job_tags
  belongs_to :user
  validates :title, :description, presence: true
end
