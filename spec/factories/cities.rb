FactoryBot.define do
  factory :city do
    picture {Faker::LoremFlickr.image}
    name {Faker::Address.city}
    total_score {Faker::Number.within(range: 0.0..10.0) }
    summary {Faker::Lorem.paragraph}
  end
end
