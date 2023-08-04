class AddPricePerDayToHostels < ActiveRecord::Migration[6.1]
  def change
    add_column :hostels, :price_per_day, :integer
  end
end
