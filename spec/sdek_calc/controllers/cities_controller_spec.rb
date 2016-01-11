require 'spec_helper'
require 'rack'

describe SdekCalc::CitiesController, type: :controller do
  routes { SdekCalc::Engine.routes }
  describe 'SdekCalc::CitiesController' do
    it 'Should be define' do
      expect(SdekCalc::CitiesController).not_to eq nil
    end
  end

  describe '#find' do
    it 'Should be find city' do
      get(:find, format: :json, key: 'Новосерг', country: 'ru')
      expect(JSON.parse(response.body).first['CityName']).to start_with('Новосерг')
    end
  end
end
