class ApplicationController < ActionController::API
  include Knock::Authenticable

  before_action :authenticate_user

  # todo err handling generic
  # rescue_from StandardError, with: :render_error_message

  # def render_error_message(exception)
  #   Rails.logger.debug exception
  #   render json: {error: "hi"}
  # end

  #https://medium.com/@stevenpetryk/providing-useful-error-responses-in-a-rails-api-24c004b31a2e
end
