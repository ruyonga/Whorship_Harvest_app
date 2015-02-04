class Resource < ActiveRecord::Base

	
	scope :sorted, lambda {  order("title ASC")}

	
end
