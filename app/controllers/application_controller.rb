class ApplicationController < ActionController::API


  def current_user 
    User.find(session[:user_id])
  end 

  def logged_in? 
    !!current_user
  end

  # helper_method :current_user, :logged_in?

 
end
