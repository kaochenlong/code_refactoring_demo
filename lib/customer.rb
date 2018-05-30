class Customer
  attr_reader :name

  def initialize(name)
    @name    = name  # 姓名
    @rentals = []    # 租借紀錄
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      # 顯示此筆租借資料
      result += "\t" + rental.movie.title + "\t" + rental.charge.to_s + "\n"
    end

    # 結尾列印
    result += "Amount owed is #{total_charge}\n"
    result += "You earned #{total_frequent_renter_points} frequent renter points"
    result
  end

  private
  def total_charge
    @rentals.reduce(0) { |sum, rental| sum + rental.charge }
  end

  def total_frequent_renter_points
    @rentals.reduce(0) { |sum, rental| sum + rental.frequent_renter_points }
  end
end
