class HotelDay
  class << self
    def get_date(input_info)
      reservation_date_array = input_info.values[0]
      transfer_date(reservation_date_array)
    end

    private

    def transfer_date(reservation_date_array)
      reservation_weekdate_array = Array.new
      reservation_date_array.each do |day|
        weekdate = day.split('(')[1].split(')')[0]
        reservation_weekdate_array << weekdate
      end
      classify_date(reservation_weekdate_array)
    end

    def classify_date(reservation_weekdate_array)
      weekday_count = 0
      weekend_count = 0
      reservation_weekdate_array.each do |date|
        (date == 'sat' || date == 'sun') ? (weekend_count += 1) : (weekday_count += 1)
      end
      days_counts = [weekday_count, weekend_count]
    end
  end
end
