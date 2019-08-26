require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should validate_presence_of(:position) }
  it { should validate_presence_of(:description) }
  it { should have_and_belong_to_many(:tags) }
end
