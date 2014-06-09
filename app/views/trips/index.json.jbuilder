json.array!(@trips) do |trip|
  json.extract! trip, :id, :description
  json.url trip_url(trip, format: :json)
end
