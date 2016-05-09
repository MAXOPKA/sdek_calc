require 'spec_helper'

describe 'Calculator' do
  calculator_params = {
    shipping_city: instance_double('SdekCalc::City'),
    delivery_city: instance_double('SdekCalc::City'),
    version: '1.0',
    dateExecute: Date.now,
    tariffId: 12,
    places: [instance_double('SdekCalc::Place'), instance_double('SdekCalc::Place')]
  }

  let(:calculator){ SdekCalc::Calculator.new(calculator_params) }

  it 'Must be initialized' do
    expect(calculator.class).to eq SdekCalc::Calculator
  end

  it 'Must have parameters' do
    calculator_params.each do |k, v|
      expect(calculator.instance_variable_get("@#{k}")).to eq v
    end
  end
end
