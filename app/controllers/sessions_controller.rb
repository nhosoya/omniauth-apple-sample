class SessionsController < ApplicationController
  skip_forgery_protection only: :callback

  def new
  end

  def callback
    session[:auth_response] = request.env['omniauth.auth']
    redirect_to me_url
  end

  def destroy
    session.clear
    redirect_to root_url
  end
end
