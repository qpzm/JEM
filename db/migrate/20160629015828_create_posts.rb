class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      
      t.integer :view_count, null: false, default: 0
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""

      t.timestamps null: false
    end
  end
end
