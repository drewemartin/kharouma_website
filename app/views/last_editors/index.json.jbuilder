json.array!(@last_editors) do |last_editor|
  json.extract! last_editor, :id, :user_id, :article_id
  json.url last_editor_url(last_editor, format: :json)
end
