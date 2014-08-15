json.array!(@articles) do |article|
  json.extract! article, :id, :body, :title, :last_editor, :publish_location, :publish_now, :user_id
  json.url article_url(article, format: :json)
end
