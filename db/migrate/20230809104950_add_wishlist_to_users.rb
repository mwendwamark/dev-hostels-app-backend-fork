class AddWishlistToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :wishlist, :string
  end
end
