json.array!(@places) do |place|
  json.extract! place, :id, :location_id, :budget_id, :name, :kind
  json.url place_url(place, format: :json)
end
