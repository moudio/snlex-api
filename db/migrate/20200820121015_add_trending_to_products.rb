class AddTrendingToProducts < ActiveRecord::Migration[6.0]
  def up
    add_column(:products, :trending, :boolean, default: false, after: "price")
  end

  def down
    remove_column(:products, :trending, :boolean, default: false, after: "price")
  end
end
