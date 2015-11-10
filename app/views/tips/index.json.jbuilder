json.array!(@tips) do |tip|
  json.extract! tip, :id, :points_home, :points_guest
  json.url tip_url(tip, format: :json)
end
