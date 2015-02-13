class AddUserToCommunity < ActiveRecord::Migration

  def change
    add_reference :users, :community, index: true
    add_foreign_key :users, :communities
  end


end
