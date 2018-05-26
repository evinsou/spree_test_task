class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :price, null: false, precision: 8, scale: 2
      t.datetime :availability_date, null: false
      t.string :slug, null: false
      t.integer :stock_total, null: false
      t.string :category, null: false
      t.timestamps
    end
  end
end
