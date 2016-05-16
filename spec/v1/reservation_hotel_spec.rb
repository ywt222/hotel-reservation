require_relative '../../lib/v1/reservation_hotel'

describe '.GetHotelName' do
  it 'should get price of each v1' do
    customer_type = 'Regular'
    days_counts = [3,0]
    all_prices = ReservationHotel.get_all_hotel_price_array(customer_type, days_counts)
    expect([330, 480, 660]).to eq(all_prices)
  end

  it 'should return the cheapest v1 name' do
    all_prices = [330, 480, 660]
    hotel_name = ReservationHotel.get_hotel_name(all_prices)
    expect('Lakewood').to eq(hotel_name)
  end
end
