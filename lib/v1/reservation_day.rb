require 'json'
require_relative 'reservation_hotel'

class ReservationDay
  class << self
    def get_type_and_date(input_info)
      customer_type = input_info.keys[0].to_s
      reservation_date_array = input_info.values[0]
      [customer_type, reservation_date_array]
      transfer_date(reservation_date_array)
    end

    def transfer_date(reservation_date_array)
      reservation_weekdate_array = Array.new
      reservation_date_array.each do |day|
        weekdate = day.split('(')[1].split(')')[0]
        reservation_weekdate_array << weekdate
      end
      # reservation_weekdate_array
      classify_date(reservation_weekdate_array)
    end

    def classify_date(reservation_weekdate_array)
      weekday_count = 0
      weekend_count = 0
      reservation_weekdate_array.each do |date|
        (date == 'sat' || date == 'sun') ? (weekend_count += 1) : (weekday_count += 1)
      end
      days_counts = [weekday_count, weekend_count]
      customer_type = 'Regular'
      ReservationHotel.get_all_hotel_price_array(customer_type, days_counts)
    end
  end
end

input_info = JSON.parse(File.read('../../spec/fixture/input.json'))
ReservationDay.get_type_and_date(input_info)
