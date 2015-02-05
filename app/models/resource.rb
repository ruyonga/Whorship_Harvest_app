class Resource < ActiveRecord::Base

	
	scope :sorted, lambda {  order("title ASC")}
	has_many :categories

	
end
