class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group_name, null: false
      t.string :group_code, null: false
      t.string :group_password, null: false
      t.string :rep_postcode, null: false
      t.text :rep_address, null: false
      t.string :rep_phone_number, null: false
      t.string :rep_email, null: false
      t.string :status, null: false
      t.string :group_profile, null: false

      t.timestamps
    end
  end
end
