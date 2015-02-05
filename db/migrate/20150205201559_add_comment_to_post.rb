class AddCommentToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :comment, index: true
    add_foreign_key :posts, :comments
  end
end
