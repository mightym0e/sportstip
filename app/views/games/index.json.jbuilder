json.array!(@games) do |game|
  json.extract! game, :id, :home, :guest, :points_home, :points_guest
  json.url game_url(game, format: :json)
end
