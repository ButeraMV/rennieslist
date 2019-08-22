FactoryBot.define do
  factory :user do
    username { "MyString" }
    email { "MyString@email.com" }
    password_digest { "MyString" }
  end
end
