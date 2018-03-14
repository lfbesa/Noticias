json.extract! comment, :id, :news_id, :usuario, :comentario, :created_at, :updated_at
json.url comment_url(comment, format: :json)
