RSpec.describe Rental do
  context "movie title and rented days" do
    it "shows corresponding rental movie title and days rented" do
      movie = build(:movie, title: "Ruby Ruby Ruby", type: Movie::CHILDRENS)
      rental = Rental.new(movie, 10)

      expect(rental.movie.title).to eq "Ruby Ruby Ruby"
      expect(rental.days_rented).to be 10
    end
  end
end
