class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
   #before_filter :authenticate_user! ,:except =>[:index, :login]

  @resources = Resource.sorted
  @communities = Community.sorted
  @users = User.all

  # private

  # def confirm_logged_in
  # 	unless  session[:user_id]
  # 		flash[:notice] = "Please Login"
  # 		redirect_to(:controller => 'communities' ,:action => "login", :user_id => @user)
  # 		return false
  # 	else
  # 		return true
  #  	end
  	
  # end
  
end
