json.array!(@communities) do |community|
  json.extract! community, :id, :name, :description, :fellowship, :leader
  json.url community_url(community, format: :json)
end
