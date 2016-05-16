require_relative 'hotel_detail'

class PriceCalculator
  class << self
    def compare_price(price_list, rating_list)
      lakewood_price = price_list[0]
      bridgewood_price = price_list[1]
      ridgewood_price = price_list[2]

      lakewood_rating = rating_list[0]
      bridgewood_rating = rating_list[1]
      ridgewood_rating = rating_list[2]

      temp_price = (lakewood_price < bridgewood_price) ? (lakewood_price) : (bridgewood_price)
      if lakewood_price == bridgewood_price
        temp_price = (lakewood_rating < bridgewood_rating) ? (bridgewood_price) : (lakewood_price)
      end
      temp_hotel_name = (temp_price == bridgewood_price) ? ('Bridgewood') : ('Lakewood')
      temp_rating = (temp_price == bridgewood_price) ? (bridgewood_rating) : (lakewood_rating)
      cheapest_price = (ridgewood_price < temp_price) ? (ridgewood_price) : (temp_price)
      if temp_price == ridgewood_price
        cheapest_price = (temp_rating < ridgewood_rating ) ? (ridgewood_price) : (temp_price)
      end
      hotel_name = (cheapest_price == ridgewood_price) ? ('Ridgewood') : (temp_hotel_name)
      p hotel_name
    end
  end
end
