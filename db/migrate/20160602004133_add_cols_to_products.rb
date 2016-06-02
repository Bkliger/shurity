class AddColsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :batch_no, :integer
    add_column :products, :score, :string
  end
end
