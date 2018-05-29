FactoryBot.define do
  factory :movie do
    title Faker::Book.title
    type { [Movie::REGULAR, Movie::NEW_RELEASE, Movie::CHILDRENS].sample }

    factory :spider_man do
      title "SpiderMan"
      type Movie::NEW_RELEASE
    end

    factory :dragon_balls do
      title "Dragon Balls"
      type Movie::CHILDRENS
    end

    initialize_with { new(title, type) }
  end
end
