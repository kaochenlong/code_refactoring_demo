RSpec.describe Customer do
  context "calculate and statement" do
    it "will calculate rental record and compose statement for customer" do
      eddie = build(:eddie)

      spider_man = build(:spider_man)
      dragon_balls = build(:dragon_balls)

      rental1 = build(:rental, movie: spider_man, days: 7)
      rental2 = build(:rental, movie: dragon_balls, days: 10)

      eddie.add_rental(rental1)
      eddie.add_rental(rental2)

      statement = "Rental Record for Eddie Kao\n\tSpiderMan\t21\n\tDragon Balls\t12.0\nAmount owed is 33.0\nYou earned 3 frequent renter points"
      expect(eddie.statement).to eq statement
    end
  end
end
