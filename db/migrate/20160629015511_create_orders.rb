class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :seller, index: true, foreign_key: true
      t.references :buyer, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      # 구매 신청을하면 not nil, 거래 성사되고 나면 nil (card 가 생기기 때문에)
      t.integer :buy_team_id, default: nil

      t.integer :price, null: false, default: 0
      # is_sell이 true면 판매신청 false면 구매신청
      t.boolean :is_sell, null: false, default: false
      t.boolean :is_complete, null: false, default: false

      t.timestamps null: false
    end
  end
end
