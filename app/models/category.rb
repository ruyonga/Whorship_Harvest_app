class Category < ActiveRecord::Base
	has_many :contents
	belongs_to :resource
end
