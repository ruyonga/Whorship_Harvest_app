class UpdateUserTable < ActiveRecord::Migration
 def self.up
      change_table :users do |t|
         t.attachment :avatar
         t.string :first_name
         t.string :last_name
         t.string :phone
        
      end
    end

    

    def self.down
      remove_attachment :users, :avatar,:first_name,:last_name, :phone
    end
end
