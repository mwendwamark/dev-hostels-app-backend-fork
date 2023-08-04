class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :mode_of_payment
      t.references :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
