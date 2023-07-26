class ApplicationController < ActionController::API
  # include JsonWebToken
  # before_action :authenticate_request

  # private

  # def authenticate_request
  #   header = request.headers["Authorization"]
  #   header = header.split(" ").last if header
  #   decoded = jwt_decode(header)
  #   @curent_user = User.find(decoded[:user_id])
  # end

  # Without using JWT
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  before_action :authorize

  private

  def authorize
    current_user = User.find_by(id: session[:user_id])
    render json: { errors: ["Not authorized"] }, status: :unauthorized unless current_user
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
