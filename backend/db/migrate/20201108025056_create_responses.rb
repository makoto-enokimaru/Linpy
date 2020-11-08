class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :receiver_id, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
