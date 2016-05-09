module SdekCalc
  module Calculator
    class Calculator

      extend ActiveModel::Naming
      include ActiveModel::Model

      PARAMS = %w{ city_shipment city_delivery version date_execute tarif places delivery_mode date_execute }
      attr_accessor *PARAMS

      def calculate
      end

      def to_h
        {
          version: version,
          dateExecute: dateExecute,
          #authLogin: authLogin,
          #secure: sesure,
          senderCityId: city_shipment.ID,
          receiverCityId: city_delivery.ID,
          tariffId: tariffId, 
          goods: SdekCalc::Place.to_h(places)
        }
      end
    end
  end
end