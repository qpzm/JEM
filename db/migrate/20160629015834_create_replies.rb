class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :post, index: true, foreing_key: true
      t.references :user, index: true, foreing_key: true

      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""

      t.timestamps null: false
    end
  end
end
