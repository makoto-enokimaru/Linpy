class CreateSumcomments < ActiveRecord::Migration[6.0]
  def change
    create_table :sumcomments do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :sumcomment, null: false

      t.timestamps
    end
  end
end
