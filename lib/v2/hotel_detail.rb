require_relative 'hotel'

class HotelDetail
  class << self
    def get_hotel_detail()
      lakewood_regular_price_list = {'lakewood_weekday_price' => 110, 'lakewood_weekend_price' => 90}
      bridgewood_regular_price_list = {'bridgewood_weekday_price' => 160, 'bridgewood_weekend_price' => 60}
      ridgewood_regular_price_list = {'ridgewood_weekday_price' => 220, 'ridgewood_weekend_price' => 150}

      lakewood_rewards_price_list = {'lakewood_weekday_price' => 80, 'lakewood_weekend_price' => 80}
      bridgewood_rewards_price_list = {'bridgewood_weekday_price' => 110, 'bridgewood_weekend_price' => 50}
      ridgewood_rewards_price_list = {'ridgewood_weekday_price' => 100, 'ridgewood_weekend_price' => 40}


      lakewood_hotel = Hotel.new('Lakewood', 3, lakewood_regular_price_list, lakewood_rewards_price_list)
      bridgewood_hotel = Hotel.new('Bridgewood', 4, bridgewood_regular_price_list, bridgewood_rewards_price_list)
      ridgewood_hotel = Hotel.new('Ridgewood', 5, ridgewood_regular_price_list, ridgewood_rewards_price_list)
      hotel_list = [lakewood_hotel, bridgewood_hotel, ridgewood_hotel]
    end
  end
end

