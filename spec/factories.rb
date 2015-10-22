require 'factory_girl'
FactoryGirl.define do
  factory :contact do
    first_name "test"
    last_name "contact"
    email "test@email.com"
    mobile "1232123"
    association :user
  end

  factory :user do
    email "factorygirl@test.com"
    password"12345678"
    password_confirmation"12345678"
  end
end
