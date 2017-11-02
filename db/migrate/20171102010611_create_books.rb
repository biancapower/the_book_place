class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :price
      t.integer :shipping_cost
      t.boolean :sold
      t.integer :recommended_retail_price
      t.string :condition
      t.string :format
      t.string :publisher
      t.integer :pages
      t.string :isbn10
      t.string :isbn13

      t.timestamps
    end
  end
end
