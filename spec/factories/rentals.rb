FactoryBot.define do
  factory :rental do
    movie { build(:movie) }
    days Faker::Number.between(1, 10)

    initialize_with { new(movie, days) }
  end
end
