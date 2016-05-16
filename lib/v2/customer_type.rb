class CustomerType
  class << self
    def get_customer_type(input_info)
      customer_type = input_info.keys[0].to_s
    end
  end
end
