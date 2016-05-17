require_relative '../../lib/v2/customer_type'

describe 'CustomerType' do
  it 'should return customer type' do
    input_info = {"Regular": ["16Mar2009(mon)", "17Mar2009(tues)", "18Mar2009(wed)"]}
    customer_type = CustomerType.get_customer_type(input_info)
    expect("Regular").to eq(customer_type)
  end
end
