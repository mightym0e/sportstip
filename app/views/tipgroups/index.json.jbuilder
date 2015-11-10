json.array!(@tipgroups) do |tipgroup|
  json.extract! tipgroup, :id, :name, :owner
  json.url tipgroup_url(tipgroup, format: :json)
end
