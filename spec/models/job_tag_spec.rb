require 'rails_helper'

RSpec.describe JobTag, type: :model do
  it { should belong_to :job }
  it { should belong_to :tag }
end
