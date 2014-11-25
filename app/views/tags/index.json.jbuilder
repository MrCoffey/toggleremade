json.array!(@tags) do |tag|
  json.extract! tag, :id, :title, :tag_id
  json.url tag_url(tag, format: :json)
end
