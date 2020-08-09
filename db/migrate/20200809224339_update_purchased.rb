class UpdatePurchased < ActiveRecord::Migration[6.0]
  def change
    rename_table("purchaseds", "purchases")
  end
end
