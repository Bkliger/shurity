class AddProductColumns < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :desc, :string
  end
end
