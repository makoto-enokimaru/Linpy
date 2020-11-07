class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :groupid
      t.string :groupname
      t.string :groupcode
      t.text :groupprofile
      t.string :rep_postcode
      t.text :rep_address
      t.string :rep_tel
      t.string :rep_email
      t.string :status

      t.timestamps
    end
  end
end
