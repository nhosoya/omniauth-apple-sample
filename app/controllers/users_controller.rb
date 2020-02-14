class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @uid = auth_response["uid"]
    @info = auth_response["info"]
    @credentials = auth_response["credentials"]
    @raw_info = auth_response["extra"]["raw_info"]
  end

  private

  def authenticate_user!
    redirect_to root_url unless auth_response
  end

  def auth_response
    session[:auth_response]
  end
end
