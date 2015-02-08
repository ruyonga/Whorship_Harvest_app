class AddContentToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :content, index: true
    add_foreign_key :categories, :contents
  end
end
