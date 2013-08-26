json.array!(@projects) do |project|
  json.extract! project, :name, :active
  json.url project_url(project, format: :json)
end
