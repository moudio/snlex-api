class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string "name"
      t.string "favorite_food"
      t.integer "age"
      t.integer "person_id"
      t.timestamps
    
    end
  end
end
