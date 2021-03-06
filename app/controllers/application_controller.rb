class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  protected
  def authenticate_user!
    if current_user
    else
      redirect_to login_path, :notice => 'You are not logged in'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
