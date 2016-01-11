json.array!(@cities) do |city|
  json.CityName city.CityName
  json.ID city.ID
end