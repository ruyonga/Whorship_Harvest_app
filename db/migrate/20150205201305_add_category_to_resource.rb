class AddCategoryToResource < ActiveRecord::Migration
  def change
    add_reference :resources, :category, index: true
    add_foreign_key :resources, :categories
  end
end
