class Post < ActiveRecord::Base
	belongs_to :community
	has_many :comments
	belongs_to :user
end
