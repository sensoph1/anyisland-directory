class CreateBusinesses < ActiveRecord::Migration[5.1]
  def up
    create_table :businesses do |t|
      t.string :last_name
      t.string :first_name
      t.string :business_name
      t.string :phone
      t.string "business_name" ,:limit => 50
      t.string "web_address", :limit => 50
      t.string "email", :limit => 50
      t.text   "marketing_copy"
      t.string "phone_number",:limit => 20
      t.string "mailing_address_1", :limit => 50
      t.string "mailing_address_2", :limit => 50
      t.string "city" ,:limit => 30
      t.string "state",:limit => 20
      t.string "country", :limit => 50
      t.string "zip", :limit => 10
      t.timestamps
    end
  end
  def down
    drop_table :businesses
  end
end
