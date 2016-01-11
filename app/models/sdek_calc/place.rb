module SdekCalc
  class Place
    PARAMS = %w{ weight length width height volume }
    attr_accessor *PARAMS

    def initialize(params = {})
      params.each do |k, v|
        send("#{k}=", v) if PARAMS.include?(k.to_s)
      end
    end
  end
end
