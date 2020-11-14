class CreateCardsShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :cards_shopping_carts do |t|
      t.references :card, null: false, foreign_key: true
      t.references :shopping_cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
