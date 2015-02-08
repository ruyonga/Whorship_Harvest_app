class AuthenticationControllerController < ApplicationController
	  skip_before_filer :authenticate_user!

  def index
  end

  def login
  end

  def logout
  end
end
