require 'spec_helper'

describe '.new' do
  city_params = {
    ID: 13981,
    FullName: '23мкр, Казахстан',
    CityName: '23мкр',
    OblName: nil,
    Center: nil,
    NalSumLimit: 0.00,
    EngName: '23mkr, Kazakhstan'
  }

  let(:city){ SdekCalc::City.new(city_params) }

  it 'Should create new City' do
    expect(city.class).to eq SdekCalc::City
  end

  it 'Should have properties' do
    expect(city).to have_attributes(city_params)
  end
end
