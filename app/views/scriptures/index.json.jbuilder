json.array!(@scriptures) do |scripture|
  json.extract! scripture, :id, :title, :body, :author
  json.url scripture_url(scripture, format: :json)
end
