class AddColumnstoProduct < ActiveRecord::Migration
  def change
    add_column :products, :block_1, :text
    add_column :products, :block_2, :text
    add_column :products, :block_3, :text
    add_column :products, :block_4, :text
  end
end
