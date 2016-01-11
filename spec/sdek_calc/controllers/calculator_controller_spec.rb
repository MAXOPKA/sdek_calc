require 'spec_helper'
require 'rack'

describe SdekCalc::CalculatorController, :type => :controller do
  routes { SdekCalc::Engine.routes }
  describe 'SdekCalc::CalculatorController' do
    it 'Should be define' do
      expect(SdekCalc::CalculatorController).not_to eq nil
    end
  end

  describe '#form' do
    it 'Should be render form' do
      get(:form)
      expect(response.body).to include('<form')
    end
  end

  describe '#calculate' do
    it 'Should be render result' do
      calculate_params = {}
      response = post(:calculate)
      expect(response.body).to include('result')
    end
  end
end
