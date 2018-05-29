RSpec.describe Movie do
  context "movie title and price code" do
    it "shows corresponding title and price code" do
      movie = Movie.new("SpiderMan", Movie::NEW_RELEASE)

      expect(movie.title).to eq "SpiderMan"
      expect(movie.price_code).to be Movie::NEW_RELEASE
    end
  end
end
