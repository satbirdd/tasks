json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :title, :state
  json.url sprint_url(sprint, format: :json)
end
