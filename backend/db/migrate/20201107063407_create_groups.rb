class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group_id
      t.string :group_name
      t.string :group_code
      t.text :group_profile
      t.string :rep_postcode
      t.text :rep_address
      t.string :rep_phone_number
      t.string :rep_email
      t.string :status

      t.timestamps
    end
  end
end
