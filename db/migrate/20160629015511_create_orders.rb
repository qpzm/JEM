class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :seller, index: true, foreign_key: true
      t.references :buyer, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      t.integer :price, null: false, default: 0
      # is_sell이 true면 판매신청 false면 구매신청
      t.boolean :is_sell, null: false, default: true
      t.boolean :is_complete, null: false, default: false

      t.timestamps null: false
    end
  end
end
