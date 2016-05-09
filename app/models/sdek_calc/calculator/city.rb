module SdekCalc
  module Calculator
    class City
      PARAMS = %w{ ID FullName CityName OblName Center NalSumLimit EngName }
      attr_accessor *PARAMS

      def initialize(params = {})
        params.each do |k, v|
          send("#{k}=", v) if PARAMS.include?(k.to_s)
        end
      end
    end
  end
end
