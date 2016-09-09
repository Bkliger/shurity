class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :rating
      t.string :retailer
      t.float :total
      t.float :shipping
      t.float :tax
      t.string :duration
      t.string :return
      t.string :warranty
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
