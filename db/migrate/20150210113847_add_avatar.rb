class AddAvatar < ActiveRecord::Migration
  def change
  	change_table :communities do |t|
         t.attachment :avatar
        
      end
  end

end
