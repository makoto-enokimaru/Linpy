class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :group, null: false, foreign_key: true
      t.string :user_name, null: false
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :postcode, null: false
      t.text :address, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :biography, null: false
      t.string :role_id

      t.timestamps
    end
  end
end
