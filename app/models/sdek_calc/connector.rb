module SdekCalc
  class Connector
    attr_reader :response
    attr_accessor :primary_url, :second_url

    def initialize(calculator = nil)
      primary_url = 'http://api.edostavka.ru:80'
      secondary_url = 'http://lk.cdek.ru:8080'
      #calculator ||= SdekCalc::Calculator.new
      begin
        get_response(primary_url)
      rescue
        get_response(secondary_url)
      end
    end

    private 

    def get_response(uri)
      url = URI(uri)
      request = Net::HTTP::Post.new(url)
      request.content_type = "application/json"
      #request.body =  JSON.generate(params)
      @response = Net::HTTP.start(url.host, url.port, read_timeout: 1) do |http| 
        http.request(request)
      end
    end
  end
end