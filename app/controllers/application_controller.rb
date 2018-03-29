
class ApplicationController < ActionController::API

  #protect_from_forgery with: :exception
  #before_action :authenticate_user!
  include ActionController::Serialization
  include Response
  include ExceptionHandler

end
