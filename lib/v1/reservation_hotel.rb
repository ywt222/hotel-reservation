class ReservationHotel
  class << self
    def get_all_hotel_price_array(customer_type, days_counts)
      # require 'byebug'; byebug
      weekday_count = days_counts[0]
      weekend_count = days_counts[1]
      if customer_type == 'Regular'
        lakewood_weekday_price = 110
        lakewood_weekend_price = 90
        bridgewood_weekday_price = 160
        bridgewood_weekend_price = 60
        ridgewood_weekday_price = 220
        ridgewood_weekend_price = 150
      end
      if customer_type == 'Rewards'
        lakewood_weekday_price = 80
        lakewood_weekend_price = 80
        bridgewood_weekday_price = 110
        bridgewood_weekend_price = 50
        ridgewood_weekday_price = 100
        ridgewood_weekend_price = 40
      end
      lakewood_price = each_hotel_price(lakewood_weekday_price, lakewood_weekend_price, weekday_count, weekend_count)
      bridgewood_price = each_hotel_price(bridgewood_weekday_price, bridgewood_weekend_price, weekday_count, weekend_count)
      ridgewood_price = each_hotel_price(ridgewood_weekday_price, ridgewood_weekend_price, weekday_count, weekend_count)
      all_prices = [lakewood_price, bridgewood_price, ridgewood_price]
      get_hotel_name(all_prices)
    end

    def each_hotel_price(weekday_price, weekend_price, weekday_count, weekend_count)
      price = weekday_price * weekday_count + weekend_price * weekend_count
    end

    def get_hotel_name(all_prices)
      lakewood_price = all_prices[0]
      bridgewood_price = all_prices[1]
      ridgewood_price = all_prices[2]
      temp = (lakewood_price < bridgewood_price) ? (lakewood_price) : (bridgewood_price)
      hotel_name = (temp == lakewood_price) ? ('Lakewood') : ('Bridgewood')
      hotel_name = 'Ridgewood' unless temp < ridgewood_price
      p hotel_name
    end
  end
end
