class CreatePreorders < ActiveRecord::Migration
  def change
    create_table :preorders do |t|
      t.string :full_name
      t.string :age
      t.string :email_address
      t.string :phone_number
      t.string :city
      t.string :country
      t.string :primary_care_physician_name
      t.string :how_did_you_hear_about_this_test

      t.timestamps null: false
    end
  end
end
