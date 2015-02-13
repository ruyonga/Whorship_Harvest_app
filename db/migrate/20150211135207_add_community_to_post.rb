class AddCommunityToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :community, index: true
    add_foreign_key :posts, :communities
  end
end
