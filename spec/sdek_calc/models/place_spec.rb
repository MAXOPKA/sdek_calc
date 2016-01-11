require 'spec_helper'

describe '.new' do
  place_params = {
    weight: 0.3,
    length: 10.0,
    width: 7.0,
    height: 5.0,
    volume: 10.0 * 7.0 * 5.0
  }
  
  let(:place){ SdekCalc::Place.new(place_params) }

  it 'Should create new Place' do
    expect(place.class).to eq SdekCalc::Place
  end

  it 'Should have properties' do
    expect(place).to have_attributes(place_params)
  end
end
