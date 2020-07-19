class CreatePurchaseds < ActiveRecord::Migration[6.0]
  def change
    create_table :purchaseds do |t|

      t.timestamps
    end
  end
end
