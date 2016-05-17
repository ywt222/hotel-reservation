require_relative '../../lib/v2/hotel_day'

describe 'HotelDay' do
  it 'should get date of reservation' do
    input_info = {"Regular": ["16Mar2009(mon)", "17Mar2009(tues)", "18Mar2009(wed)"]}
    days_counts = HotelDay.get_date(input_info)
    expect([3, 0]).to eq(days_counts)
  end
end
