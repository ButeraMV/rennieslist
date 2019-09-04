require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should have_many(:tags) }
  it { should have_many(:job_tags) }
  it { should belong_to(:user) }
end
