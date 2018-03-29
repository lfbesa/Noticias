class SimpleNewsSerializer < ActiveModel::Serializer

  def serialize_news(news = @news)
      {
          name: news.name,
          title: news.title,
          subtitle: news.subtitle,
          body: news.body,
      }
    end

    def serialize_newss(newss)
      {
          newss: newss.map do |awesome|
            serialize_news awesome
          end
      }
    end
end
