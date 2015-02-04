class CreateScriptures < ActiveRecord::Migration
  def change
    create_table :scriptures do |t|
      t.string :title
      t.text :body
      t.string :author

      t.timestamps null: false
    end
  end
end
