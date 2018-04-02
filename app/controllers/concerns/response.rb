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
  def json_response5(object, status = :ok)
     {
       id: object.id,
        title: object.title,
        subtitle: object.subtitle,
        body: object.body,
        created_at: object.created_at,
        status: 201
    }
  end
  def json_response3(object, status = :ok)
     {
       id: object.id,
        author: object.author,
        comment: object.comment,
        created_at: object.created_at
    }
  end
  def json_response4(object, status = :ok)
    {
        object: object.map do |awesome|
          json_response3( awesome)
        end
    }

  end
  def json_response6(object, status = :ok)
     {
       id: object.id,
        author: object.author,
        comment: object.comment,
        created_at: object.created_at,
        status: 201
    }
  end
end
