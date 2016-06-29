class CreateEventHistories < ActiveRecord::Migration
  def change
    create_table :event_histories do |t|

      t.timestamps null: false
    end
  end
end
