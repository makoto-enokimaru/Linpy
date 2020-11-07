class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :group, null: false, foreign_key: true
      t.string :user_id
      t.string :user_name
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :email
      t.string :password
      t.string :biography
      t.text :role_id

      t.timestamps
    end
  end
end
