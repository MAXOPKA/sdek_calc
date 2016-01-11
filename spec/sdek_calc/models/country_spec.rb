require 'spec_helper'

describe '#new' do
  let(:country){ SdekCalc::Country.new(:ru) }

  it 'Should have class Country' do
    expect(country.class).to eq SdekCalc::Country
  end

  it 'Should be City' do
    expect(country.cities.first.class).to eq SdekCalc::City
  end

  it 'Should have ID' do
    expect(country.cities.first.ID).not_to be_nil
  end
end

describe '#find_cities' do
  let(:country){ SdekCalc::Country.new(:ru) }

  it 'Should return first city "Новосерг"' do
    expect(country.find_cities('Новосерг').first.CityName).to start_with 'Новосерг'
  end
end
