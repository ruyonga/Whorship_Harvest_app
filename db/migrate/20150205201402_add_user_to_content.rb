class AddUserToContent < ActiveRecord::Migration
  def change
    add_reference :contents, :user, index: true
    add_foreign_key :contents, :users
  end
end
