class Job < ApplicationRecord
  belongs_to :vendor
  belongs_to :performer
end
