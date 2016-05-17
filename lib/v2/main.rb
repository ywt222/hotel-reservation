require 'json'
require_relative 'hotel_day'
require_relative 'customer_type'
require_relative 'hotel_price'
require_relative 'hotel_detail'
require_relative 'hotel_price'
require_relative 'price_calculator'

class Main
  input_info = JSON.parse(File.read('../../spec/fixture/input.json'))
  days_counts = HotelDay.get_date(input_info)
  customer_type = CustomerType.get_customer_type(input_info)
  hotel_list = HotelDetail.get_hotel_detail
  price_list = HotelPrice.price_detail(customer_type, days_counts, hotel_list)
  rating_list = [hotel_list[0].rating, hotel_list[1].rating, hotel_list[2].rating]
  hotel_name = PriceCalculator.compare_price(price_list, rating_list)
  p hotel_name
end
