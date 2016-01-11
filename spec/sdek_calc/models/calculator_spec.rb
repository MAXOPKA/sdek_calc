require 'spec_helper'

describe 'Calculator' do
  calculator_params = {
    weight: 0.3,
    length: 10.0,
    width: 7.0,
    height: 5.0,
    volume: 10.0 * 7.0 * 5.0
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
