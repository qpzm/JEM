class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :seller, index: true, foreign_key: true
      t.references :buyer, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      t.integer :price, null: false, default: 0
      t.boolean :is_sell, null: false, default: true
      t.boolean :is_complete, null: false, default: false

      t.timestamps null: false
    end
  end
end
