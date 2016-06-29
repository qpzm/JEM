class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.boolean :on_market, null: false, default: false

      t.timestamps null: false
    end
  end
end
