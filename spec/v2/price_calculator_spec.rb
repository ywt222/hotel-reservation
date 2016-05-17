require_relative '../../lib/v2/price_calculator'

describe 'PriceCalculator' do
  it 'should return the hotel name' do
    price_list = [330, 480, 660]
    rating_list = [3, 4, 5]
    hotel = PriceCalculator.compare_price(price_list, rating_list)
    expect('Lakewood').to eq (hotel)
  end
end
