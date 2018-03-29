module Response
  def json_response(object, status = :ok)
     {
       id: object.id,
        title: object.title,
        subtitle: object.subtitle,
        body: object.body,
        created_at: object.created_at
    }
  end
  def json_response2(object, status = :ok)
    for n in object
      n.body = n.body[0,500]
    end
    {
        object: object.map do |awesome|
          json_response( awesome)
        end
    }

  end
end
