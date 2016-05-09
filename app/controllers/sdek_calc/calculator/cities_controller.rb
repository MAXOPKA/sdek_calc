module SdekCalc
  module Calculator
    class CitiesController < ActionController::Base
      def find
        @cities = SdekCalc::Country.new(params[:country]).find_cities(params[:key])
      end
    end
  end
end
