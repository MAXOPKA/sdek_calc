module SdekCalc
  class Calculator
    PARAMS = %w{ shipping_city delivery_city }
    attr_accessor *PARAMS

    def initialize(params)
      params.each do |k, v|
        send("#{k}=", v) if PARAMS.include?(k.to_s)
      end
    end

    def calculate
    end
  end
end