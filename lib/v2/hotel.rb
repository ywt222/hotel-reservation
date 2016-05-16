class Hotel
  attr_accessor :name, :rating, :regular_price_list, :rewards_price_list

  def initialize(name, rating, regular_price_list, rewards_price_list)
    @name = name
    @rating = rating
    @regular_price_list = regular_price_list
    @rewards_price_list = rewards_price_list
  end
end
