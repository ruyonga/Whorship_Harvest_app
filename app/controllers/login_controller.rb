 class LoginController < ApplicationController


	 before_action :confirm_logged_in, :except =>[:login, :attempt_login, :logout ]
  def index
  	#display text and links
  end

  def login
  	#login form
  end

  def attempt_login
  	if params[:email].present? && params["password"].present?
  		found_user = User.where(:email=> params[:email]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end
  	end
  	if authorized_user
  		#TODO: mark as logged in
  		session[:user_id] = authorized_user.id
  		session[:email] = authorized_user.first_name
  		flash[:notice] = "You are now Logged in"
  		redirect_to(:action => {:controller => 'root'})
  	else
  		flash[:notice] = "Invalid Username/ password"
  		redirect_to(:action => 'login')
  	end
  end


  def logout
  	session[:user_id] = nil
  	session[:email] = nil
  	flash[:notice] = "Logged out"
  	redirect_to(:action => "login")
  end


  
end
