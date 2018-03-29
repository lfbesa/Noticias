module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
  def json_response2(object, status = :ok)
    for n in object
      n.body = n.body[0,500]
    end
    render json: object, status: status
  end
end
