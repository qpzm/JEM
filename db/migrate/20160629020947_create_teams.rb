class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false, default: ""
      t.string :information, null: false, default: ""

      t.timestamps null: false
    end
  end
end
