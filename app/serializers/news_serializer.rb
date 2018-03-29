class NewsSerializer < ActiveModel::Serializer

  attributes :id, :title, :subtitle, :body, :created_at
end
