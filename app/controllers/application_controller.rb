class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Expose these methods to the views
  helper_method :current_user, :signed_in?, :csrf_input

  private

  def current_user
    return nil if session[:token].nil?
    return nil if Session.find_by_token(session[:token]).nil?
    @current_user ||= Session.find_by_token(session[:token]).user
    # fail

    # return nil unless session[:token]
    # @current_user ||= User.find_by_session_token(session[:token])
  end

  def signed_in?
    !!current_user
  end

  def sign_in(user)
    @session = Session.create(user: user, token: SecureRandom.urlsafe_base64)
    # fail
    @current_user = user
    # session[:token] = user.reset_session_token!
    session[:token] = @session.token
  end

  def sign_out
    current_user.try(:reset_session_token!)
    session[:token] = nil
  end

  def require_signed_in!
    redirect_to new_session_url unless signed_in?
  end
end
