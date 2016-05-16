class HotelPrice
  class << self
    def price_detail(customer_type, days_counts, hotel_list)
      lakewood_hotel = hotel_list[0]
      bridgewood_hotel = hotel_list[1]
      ridgewood_hotel = hotel_list[2]

      if customer_type == 'Regular'
        lakewood_price_list = lakewood_hotel.regular_price_list
        bridgewood_price_list = bridgewood_hotel.regular_price_list
        ridgewood_price_list = ridgewood_hotel.regular_price_list
      end
      if customer_type == 'Rewards'
        lakewood_price_list = lakewood_hotel.rewards_price_list
        bridgewood_price_list = bridgewood_hotel.rewards_price_list
        ridgewood_price_list = ridgewood_hotel.rewards_price_list
      end

      lakewood_weekday_price = lakewood_price_list['lakewood_weekday_price']
      lakewood_weekend_price = lakewood_price_list['lakewood_weekend_price']
      bridgewood_weekday_price = bridgewood_price_list['bridgewood_weekday_price']
      bridgewood_weekend_price = bridgewood_price_list['bridgewood_weekend_price']
      ridgewood_weekday_price = ridgewood_price_list['ridgewood_weekday_price']
      ridgewood_weekend_price = ridgewood_price_list['ridgewood_weekend_price']

      weekday_count = days_counts[0]
      weekend_count = days_counts[1]

      lakewood_price = calculate_price(lakewood_weekday_price, lakewood_weekend_price, weekday_count, weekend_count)
      bridgewood_price = calculate_price(bridgewood_weekday_price, bridgewood_weekend_price, weekday_count, weekend_count)
      ridgewood_price = calculate_price(ridgewood_weekday_price, ridgewood_weekend_price, weekday_count, weekend_count)
      price_list = [lakewood_price, bridgewood_price, ridgewood_price]
    end

    private

    def calculate_price(weekday_price, weekend_price, weekday_count, weekend_count)
      price = weekday_price * weekday_count + weekend_price * weekend_count
    end
  end
end
