class AddUSerToPosts < ActiveRecord::Migration
  def change
    # add_reference :posts, :user, index: true
    # add_foreign_key :posts, :users

    add_reference :posts, :community, index: true
	add_foreign_key :posts, :communities
  end
end


