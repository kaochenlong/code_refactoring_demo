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
    total_amount = 0            # 總消費金額
    frequent_renter_points = 0  # 常客積點
    result = "Rental Record for #{@name}\n"

    @rentals.each do |element|
      this_amount = amount_for(element)

      # 累加常客積點
      frequent_renter_points += 1
      # 如果是新片而且租超過 1 天，另外加 1 點
      if element.movie.price_code == Movie::NEW_RELEASE && element.days_rented > 1
        frequent_renter_points += 1
      end

      # 顯示此筆租借資料
      result += "\t" + element.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount += this_amount
    end

    # 結尾列印
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end

  private
  def amount_for(element)
    this_amount = 0
    case element.movie.price_code
    when Movie::REGULAR
      this_amount += 2
      this_amount += (element.days_rented - 2) * 1.5 if element.days_rented > 2
    when Movie::NEW_RELEASE
      this_amount += element.days_rented * 3
    when Movie::CHILDRENS
      this_amount += 1.5
      this_amount += (element.days_rented - 3) * 1.5 if element.days_rented > 3
    end

    this_amount
  end
end
