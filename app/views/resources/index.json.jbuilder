json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :description, :published
  json.url resource_url(resource, format: :json)
end
