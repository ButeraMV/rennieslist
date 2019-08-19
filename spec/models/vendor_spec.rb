require 'rails_helper'

RSpec.describe Vendor, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
end
