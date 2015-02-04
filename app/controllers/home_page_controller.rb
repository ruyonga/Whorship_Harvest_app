class HomePageController < ApplicationController
	
  def home
  @resources = Resource.sorted
  @communities = Community.sorted
  end
end
