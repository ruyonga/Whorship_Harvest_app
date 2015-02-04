class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :communities do |t|
      t.attachment :avatar
    end

    change_table :admin_users do |t|
      t.attachment :avatar
    end
   
  end

  def self.down
  	remove_attachment :admin_users, :avatar
    remove_attachment :communities, :avatar

  end
end
