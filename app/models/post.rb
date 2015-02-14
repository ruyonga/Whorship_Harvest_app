class Post < ActiveRecord::Base

	has_many :comments ,dependent: :destroy
	belongs_to :user

	scope :first_name, lambda { where(:first_name => ["name LIKE ?", "%#{query}%"])}

	scope :sorted, lambda {  order("posts.id DESC")}
	scope :newest_first, lambda{ order("posts.created_at DESC")}
	scope :search, lambda{|query| where(["name LIKE ?", "%#{query}%"])}
end
