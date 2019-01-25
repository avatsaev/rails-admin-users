# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, except: [:new, :create]
  # before_action :configure_sign_in_params, only: [:create]

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end

  # GET /resource/sign_in
  # def new
  #   super
  #   p params
  # end

  # POST /resource/sign_in
  def create
    super
    p params
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
