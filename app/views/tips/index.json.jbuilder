json.array!(@tips) do |tip|
  json.extract! tip, :id, :points_home, :points_guest, :user_id, :game_id
  json.url tip_url(tip, format: :json)
end
