FactoryBot.define do
  factory :job do
    position { "MyString" }
    description { "MyText" }
    vendor { nil }
    performer { nil }
  end
end
