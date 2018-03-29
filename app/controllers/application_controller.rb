include ActionController::Serialization
class ApplicationController < ActionController::API

  #protect_from_forgery with: :exception
  #before_action :authenticate_user!
  include Response
  include ExceptionHandler

end
