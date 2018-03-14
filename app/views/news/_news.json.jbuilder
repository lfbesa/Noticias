json.extract! news, :id, :titular, :bajada, :cuerpo, :tiempo, :created_at, :updated_at
json.url news_url(news, format: :json)
