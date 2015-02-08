class AddAttachmentAvatarToUsers < ActiveRecord::Migration
    def self.up
      change_table :communities do |t|
        t.attachment :avatar
      end
    end

    

    def self.down
      remove_attachment :communities, :avatar
    end
end
