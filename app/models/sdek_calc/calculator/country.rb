module SdekCalc
  module Calculator
    class Country
      attr_reader :cities

      def initialize(code = :ru)
        @code = code
        cities_file = "#{Rails.root}/config/sdek_calc/cities/#{@code}.yml"
        @cities = YAML.load_file(cities_file)[@code.to_s].map{ |city_params| SdekCalc::City.new(city_params) }
      end

      def find_cities(key, limit = 10)
        if key != @key
          @search_results = []
          @cities.each do |city|
            @search_results << city if city.CityName.start_with?(key)
            break if @search_results.count == limit
          end
        end
        @search_results
      end
    end
  end
end