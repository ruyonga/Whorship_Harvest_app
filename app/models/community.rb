class Community < ActiveRecord::Base

	scope :sorted, lambda {  order("name ASC")}
end
