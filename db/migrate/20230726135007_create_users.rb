class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :email_verified_at
      t.string :password_digest
      t.string :remember_token
      t.string :description
      t.string :phone_number
      t.string :profile_image

      t.timestamps
    end
  end
end
