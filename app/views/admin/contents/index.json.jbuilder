json.array!(@contents) do |content|
  json.extract! content, :id, :title, :content, :youtube_url, :user_id, :concept_id
  json.url content_url(content, format: :json)
end
