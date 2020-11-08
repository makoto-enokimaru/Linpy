class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :event_name, null: false
      t.date :event_date, null: false
      t.time :start_time, null: false
      t.time :end_name, null: false
      t.text :memo

      t.timestamps
    end
  end
end
