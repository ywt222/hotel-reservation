require_relative '../../lib/v2/hotel_price'
require_relative '../../lib/v2/hotel_detail'

describe 'HotelPrice' do
  it 'should return the price list' do
    customer_type = 'Regular'
    days_counts = [3, 0]
    hotel_list = HotelDetail.get_hotel_detail
    price_list = HotelPrice.price_detail(customer_type, days_counts, hotel_list)
    expect([330, 480, 660]).to eq(price_list)
  end

end
