class CreatePurchaseds < ActiveRecord::Migration[6.0]
  def change
    create_table :purchaseds do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps

    end
  end
end
