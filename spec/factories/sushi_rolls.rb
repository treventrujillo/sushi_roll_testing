FactoryGirl.define do
  factory :sushi_roll do
    name "Sushi"
    price (1..15).to_a.sample
    spicy (["Mild", "None", "Spicy"]).to_a.sample
    user
  end
end
