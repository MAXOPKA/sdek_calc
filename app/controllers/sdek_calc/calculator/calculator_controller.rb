module SdekCalc
  module Calculator
    class CalculatorController < ActionController::Base
      def new
        @calculator = ::SdekCalc::Calculator::Calculator.new
      end

      def create
        @calculator ::SdekCalc::Calculator::Calculator.new(params).calculate
      end

      private
      def calculator_params
        params.require(:calculator).permit(:city_shipment, :city_delivery)
      end
    end
  end
end
