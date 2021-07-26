class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :ingredients
      t.integer :price

      t.timestamps
    end
  end
end
