class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?, :csrf_input

  private

  def current_user
    # return nil if session[:session_token].nil?
    # return nil if Session.find_by_token(session[:session_token]).nil?
    # @current_user ||= Session.find_by_token(session[:session_token]).user
    # fail

    # return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def signed_in?
    !!current_user
  end

  def sign_in(user)
    # @session = Session.create(user: user, token: SecureRandom.urlsafe_base64)
    @current_user = user
    session[:session_token] = user.reset_session_token!
    # session[:session_token] = @session.token
  end

  def sign_out
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
  end

  def require_signed_in!
    redirect_to new_sessions_url unless signed_in?
  end
end
