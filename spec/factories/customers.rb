FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }

    factory :eddie do
      name "Eddie Kao"
    end

    initialize_with { new name }
  end
end
