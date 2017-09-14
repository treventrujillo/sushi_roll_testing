FactoryGirl.define do
  sequence :email do |number|
    "test_#{number}@test.com"
  end

  factory :user do
    first_name "Test"
    last_name "Tester"
    age (1..100).to_a.sample
    email
    password "password"
  end
end
