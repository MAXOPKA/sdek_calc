require 'spec_helper'

describe 'Connector' do
  describe 'Exist Connector' do
    it 'Must be existing' do
      expect(SdekCalc::Connector).not_to eq nil
    end
  end

  describe 'Connect' do
    it 'Must be connecting' do
      expect(SdekCalc::Connector.new().response.code).to eq '200'
    end
  end
end