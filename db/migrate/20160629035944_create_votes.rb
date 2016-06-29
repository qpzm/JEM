class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :team_1, index: true, foreign_key: true # 1등 팀
      t.references :team_2, index: true, foreign_key: true # 2등 팀
      t.references :team_3, index: true, foreign_key: true # 3등 팀

      t.boolean :is_complete, null: false, default: false

      t.timestamps null: false
    end
  end
end
