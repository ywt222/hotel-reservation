require_relative '../../lib/v1/reservation_day'
require 'json'

describe '.ReservationDay' do
  it 'should get the customer type and the reservation_date_array' do
    input_info = JSON.parse(File.read('./spec/fixture/input.json'))
    detail = ReservationDay.get_type_and_date(input_info)
    expect(['Regular', %w(16Mar2009(mon) 17Mar2009(tues) 18Mar2009(wed))]).to eq(detail)
  end

  it 'should transfer date to weekdate' do
    reservation_date_array = %w(16Mar2009(mon) 17Mar2009(tues) 18Mar2009(wed))
    reservation_weekdate_array = ReservationDay.transfer_date(reservation_date_array)
    expect(%w(mon tues wed)).to eq(reservation_weekdate_array)
  end

  it 'should count weekdays and weekends' do
    reservation_weekdate_array = %w(mon tues wed)
    days_counts = ReservationDay.classify_date(reservation_weekdate_array)
    expect([3,0]).to eq(days_counts)
  end
end
